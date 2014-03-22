built-ins
builtIns
	self
		openWorkspace:
			'NAME
  builtIns - list client built-in commands

SYNOPSIS
  builtIns 

DESCRIPTION
  builtIns
  --------
    This command. Overview of client-side built-in commands.

  close
  -----
    Close all windows associated with the session.

  collapse
  --------
    Collapse all windows associated with the session.

  exit
  ----
    Logout and close console window.

  expand
  ------
    Expand collapsed windows associated with the session.

  help
  ----
    tODE help.

  installTode
  -----------
    Install/update tODE on the server. See `installTode -h` for more information.

  logout
  ------
    Close all windows associated with the session and logout of remote session. 
    Leave console window open.
 
  restoreBackup
  -------------
    Restore from backup on server. tODE does not have to be installed on server. 
    See `restoreBackup -h` for more information.

  testLogin
  ---------
    Validate session description. Diagnostic messages are provided with suggestions 
    for addrssing any issues encountered. If a successful login is accomplished, 
    information about the remote server is provided.

  updateClient
  ------------
    Update the tODE client software. See `updateClient -h` for more information.

EXAMPLES
  builtIns
  close
  collapse
  exit
  expand
  help
  installTode -h
  logout
  restoreBackup -h
  testLogin
  updateClient -h

'
		label: 'Help for tODE built-in commands'.
	^ 'EXAMPLES
  builtIns
  close
  collapse
  exit
  expand
  help
  installTode -h
  logout
  restoreBackup -h
  tstLogin
  updateClient -h
'