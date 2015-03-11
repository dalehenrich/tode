built-ins
executeUpdateServer: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('scriptPath' nil #required).
			}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ ^ self topezClient installUpdateTode: options ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateServer - install tODE on the server

SYNOPSIS
  updateServer [-h|--help]
  updateServer [--scriptPath=<script-directory> ]

DESCRIPTION
  With no arguments, update an already installed tODE to the latest version.

  updateServer executes a Smalltalk script named `installTode.ws`, that is loaded from a directory
  on disk. 

  With no arguments specified, the file will be located by looking for the file in the following directories:
     $GS_HOME/tode/sys/local/server/scripts
     $GS_HOME/tode/sys/default/server/scripts

  If --scriptPath is specified, then the files is expected to be found in that directory.

EXAMPLES
  updateServer -h
  updateServer
  updateServer --scriptPath=/opt/git/tode/updateServerTodeScripts
') interact ]