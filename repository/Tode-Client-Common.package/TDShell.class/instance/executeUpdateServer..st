built-ins
executeUpdateServer: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('clientScriptPath' nil #required).
			#('serverScriptPath' nil #required)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			| forceGLASSInstall scriptDirectory |
			options at: 'force' ifPresent: [ :ignored | forceGLASSInstall := true ] ifAbsent: [ forceGLASSInstall := false ].
			scriptDirectory := self scriptDirectoryFrom: options.
			^ self topezClient installUpdateTode: forceGLASSInstall scriptDirectory: scriptDirectory ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateServer - install tODE on the server

SYNOPSIS
  updateServer [-h|--help]
  updateServer --serverScriptPath=<server-script-directory> 
  updateServer -clientScriptPath=<client-script-directory>
  updateServer 

DESCRIPTION
  With no arguments, update an already installed tODE to the latest version.

  updateServer executes a Smalltalk script that is loaded from a directory
  on disk. If neither --clientScriptPath nor --serverScriptPath is specified then updateServer expects
  to find a directory called `updateServer` as a sibling to the `repository` directory from which the
  BaselineOfTode has been installed on the client system.

  If --clientScriptPath is specified, the scripts will be loaded from the specified directory on
  the client system. If <client-script-directory> is a relative path, the path will be appended
  to TDShell class>>serverScriptsHome.

  If --serverScriptPath is specified, the scripts will be loaded from the specified directory on
  the server system - where the stone and gems are executing. If <server-script-directory> is a 
  relative path, the path will be appended to TDShell class>>serverScriptsHome.

EXAMPLES
  updateServer -h
  updateServer
  updateServer --clientScriptPath=installTode
  updateServer --clientScriptPath=/opt/git/tode/installTode
  updateServer --serverScriptPath=install
  updateServer --serverScriptPath=/opt/git/todeHome/install

') interact ]