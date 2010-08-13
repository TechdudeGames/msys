/* external.cc: Interface to Cygwin internals from external programs.

   Copyright 1997, 1998, 1999, 2000, 2001 Red Hat, Inc.

   Written by Christopher Faylor <cgf@cygnus.com>

This file is part of Cygwin.

This software is a copyrighted work licensed under the terms of the
Cygwin license.  Please consult the file "CYGWIN_LICENSE" for
details. */

#include "winsup.h"
#include "security.h"
#include "fhandler.h"
#include "sync.h"
#include "sigproc.h"
#include "pinfo.h"
#include <exceptions.h>
#include "shared_info.h"
#include "cygwin_version.h"
#include "perprocess.h"

static external_pinfo *
fillout_pinfo (pid_t pid, int winpid)
{
  BOOL nextpid;
  static external_pinfo ep;

  if ((nextpid = !!(pid & CW_NEXTPID)))
    pid ^= CW_NEXTPID;

  static winpids pids (0);

  if (!pids.npids || !nextpid)
    pids.init (winpid);

  static unsigned int i;
  if (!pid)
    i = 0;

  memset (&ep, 0, sizeof ep);
  while (i < pids.npids)
    {
      DWORD thispid = pids.winpid (i);
      _pinfo *p = pids[i];
      i++;

      if (!p)
	{
	  if (!nextpid && thispid != (DWORD) pid)
	    continue;
	  ep.pid = cygwin_pid (thispid);
	  ep.dwProcessId = thispid;
	  ep.process_state = PID_IN_USE;
	  ep.ctty = -1;
	  break;
	}
      else if (nextpid || p->pid == pid || (winpid && thispid == (DWORD) pid))
	{
	  ep.ctty = p->ctty;
	  ep.pid = p->pid;
	  ep.ppid = p->ppid;
	  ep.hProcess = p->hProcess;
	  ep.dwProcessId = p->dwProcessId;
	  ep.uid = p->uid;
	  ep.gid = p->gid;
	  ep.pgid = p->pgid;
	  ep.sid = p->sid;
	  ep.umask = 0;
	  ep.start_time = p->start_time;
	  ep.rusage_self = p->rusage_self;
	  ep.rusage_children = p->rusage_children;
	  strcpy (ep.progname, p->progname);
	  ep.strace_mask = 0;
	  ep.strace_file = 0;

	  ep.process_state = p->process_state;
	  break;
	}
    }

  if (!ep.pid)
    {
      i = 0;
      pids.reset ();
      return 0;
    }
  return &ep;
}

static DWORD
get_cygdrive_info (char *user, char *system, char *user_flags,
		   char *system_flags)
{
  int res = mount_table->get_cygdrive_info (user, system, user_flags,
					    system_flags);
  return (res == ERROR_SUCCESS) ? 1 : 0;
}

static DWORD
get_cygdrive_prefixes (char *user, char *system)
{
  char user_flags[MAX_PATH];
  char system_flags[MAX_PATH];
  DWORD res = get_cygdrive_info (user, system, user_flags, system_flags);
  return res;
}

/*
 * Cygwin-specific wrapper for win32 ExitProcess and TerminateProcess.
 * It ensures that the correct exit code, derived from the specified
 * status value, will be made available to this process's parent (if
 * that parent is also a cygwin process). If useTerminateProcess is
 * true, then TerminateProcess(GetCurrentProcess(),...) will be used;
 * otherwise, ExitProcess(...) is called.
 *
 * Used by startup code for cygwin processes which is linked statically
 * into applications, and is not part of the cygwin DLL -- which is why
 * this interface is exposed. "Normal" programs should use ANSI exit(),
 * ANSI abort(), or POSIX _exit(), rather than this function -- because
 * calling ExitProcess or TerminateProcess, even through this wrapper,
 * skips much of the cygwin process cleanup code.
 */

static void
exit_process (UINT status, bool useTerminateProcess)
{
/*
  ...cygwin-1.7 code...
  pid_t pid = getpid ();
  external_pinfo * ep = fillout_pinfo (pid, 1);
  DWORD dwpid = ep ? ep->dwProcessId : pid;
  pinfo p (pid, PID_MAP_RW);
  if ((dwpid == GetCurrentProcessId()) && (p->pid == ep->pid))
    p.set_exit_code ((DWORD)status);
*/
  if (useTerminateProcess)
    TerminateProcess (GetCurrentProcess(), status);
  /* avoid 'else' clause to silence warning */
  ExitProcess (status);
}

extern "C" DWORD
cygwin_internal (cygwin_getinfo_types t, ...)
{
  va_list arg;
  va_start (arg, t);

  switch (t)
    {
      case CW_LOCK_PINFO:
	return 1;

      case CW_UNLOCK_PINFO:
	return 1;

      case CW_GETTHREADNAME:
	return (DWORD) threadname (va_arg (arg, DWORD));

      case CW_SETTHREADNAME:
	{
	  char *name = va_arg (arg, char *);
	  regthread (name, va_arg (arg, DWORD));
	  return 1;
	}

      case CW_GETPINFO:
	return (DWORD) fillout_pinfo (va_arg (arg, DWORD), 0);

      case CW_GETVERSIONINFO:
	return (DWORD) cygwin_version_strings;

      case CW_USER_DATA:
	return (DWORD) &__cygwin_user_data;

      case CW_PERFILE:
	perfile_table = va_arg (arg, struct __cygwin_perfile *);
	return 0;

      case CW_GET_CYGDRIVE_PREFIXES:
	{
	  char *user = va_arg (arg, char *);
	  char *system = va_arg (arg, char *);
	  return get_cygdrive_prefixes (user, system);
	}

      case CW_GETPINFO_FULL:
	return (DWORD) fillout_pinfo (va_arg (arg, pid_t), 1);

      case CW_INIT_EXCEPTIONS:
	init_exceptions ((exception_list *) arg);
	return 0;

      case CW_GET_CYGDRIVE_INFO:
	{
	  char *user = va_arg (arg, char *);
	  char *system = va_arg (arg, char *);
	  char *user_flags = va_arg (arg, char *);
	  char *system_flags = va_arg (arg, char *);
	  return get_cygdrive_info (user, system, user_flags, system_flags);
	}

      case CW_EXIT_PROCESS:
        {
          UINT status = va_arg (arg, UINT);
          int useTerminateProcess = va_arg (arg, int);
          exit_process (status, !!useTerminateProcess); /* no return */
        }

      default:
	return (DWORD) -1;
    }
}