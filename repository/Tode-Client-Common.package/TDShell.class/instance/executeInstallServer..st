built-ins
executeInstallServer: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('scriptPath' nil #required).
			}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			
			^ self topezClient installTode: options ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  installServer - install tODE on the server

SYNOPSIS
  installServer [-h|--help]
  installServer  [--scriptPath=<script-directory>]

DESCRIPTION
   Install tODE into a $GEMSTONE/bin/extent0.seaside.dbf extent. The installation involves the following steps:
    1. upgrade GLASS (file name `upgradeGLASS.ws`)
    2. install Metacello (file name `installMetacello.ws`)
    3. install GLASS1 (file name `installGLASS1.ws`)
    4. install Tode (file name `installTode.ws`)
  If tODE has already been installed, step 1 is skipped and the remaining steps are performed.

  For each of the steps, installServer executes a Smalltalk script that is loaded from a file
  on disk. 

  With no arguments specified, each file will be located by looking for the file in the following directories:
     $GS_HOME/tode/sys/local/server/scripts
     $GS_HOME/tode/sys/default/server/scripts

  If --scriptPath is specified, then each of the files is expected to be found in that directory.

EXAMPLES
  installServer -h
  installServer
  installServer --scriptPath=/opt/git/tode/installTode
') interact ]