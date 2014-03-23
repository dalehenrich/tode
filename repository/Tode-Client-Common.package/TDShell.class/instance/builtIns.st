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

  logout
  ------
    Close all windows associated with the session and logout of remote session. 
    Leave console window open.
 
  restoreBackup
  -------------
    Restore from backup on server. tODE does not have to be installed on server. 
    See `restoreBackup -h` for more information.

  script
  ------
    Execute client-side scripts. Primarily useful for running a sequence of commands 
    to install tode on the server. The following sequence of commands:

      updateServer --clientScriptPath=/opt/git/todeHome/server/scripts
      bu backup tode.dbf
      mount /opt/git/todeHome/home /
      logout
      bu backup home.dbf

    can be executed by executing a single script command:

      script --script=/opt/git/todeHome/client/scripts/installTode

    where the `installTode` file contains the list of commands to be executed.

    See `script -h` for more information.

  sessionDescription
  ------------------
    Edit and update the session description. See `sessionDescription -h` for more 
    information.

  testLogin
  ---------
    Validate session description. Diagnostic messages are provided with suggestions 
    for addrssing any issues encountered. If a successful login is accomplished, 
    information about the remote server is provided.

  updateClient
  ------------
    Update the tODE client software. See `updateClient -h` for more information.

  updateServer
  -----------
    Install/update tODE on the server. See `updateServer -h` for more information.

  whatsNew
  --------
    Description of new features.

EXAMPLES
  builtIns
  close
  collapse
  exit
  expand
  help
  logout
  restoreBackup -h
  script -h
  testLogin
  updateClient -h
  updateServer -h
  whatsNew

'
		label: 'Help for tODE built-in commands'.
	^ 'EXAMPLES
  builtIns
  close
  collapse
  exit
  expand
  help
  logout
  restoreBackup -h
  script -h
  testLogin
  updateClient -h
  whatsNew
'