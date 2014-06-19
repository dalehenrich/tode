built-ins
executeInstallServer: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('clientScriptPath' nil #required).
			#('force' $f #none).
			#('serverScriptPath' nil #required).
			#('topaz' $t #none)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			| forceGLASSInstall scriptDirectory |
			options at: 'force' ifPresent: [ :ignored | forceGLASSInstall := true ] ifAbsent: [ forceGLASSInstall := false ].
			options
				at: 'clientScriptPath'
				ifPresent: [ :dirname | 
					| path |
					path := dirname.
					(dirname beginsWith: '/')
						ifFalse: [ path := TDShell updateServerHome , dirname ].
					scriptDirectory := self filetreeUtilityClass directoryFromPath: path ]
				ifAbsent: [ 
					options
						at: 'serverScriptPath'
						ifPresent: [ :dirname | 
							| path |
							path := dirname.
							(dirname beginsWith: '/')
								ifFalse: [ path := TDShell updateServerHome , dirname ].
							scriptDirectory := self filetreeUtilityClass directoryFromPath: path ]
						ifAbsent: [ scriptDirectory := self scriptDirectoryFromBaselineOfTode ] ].
			options
				at: 'topaz'
				ifPresent: [ ^ self topezClient installTodeTopazScript: forceGLASSInstall scriptDirectory: scriptDirectory ].
			^ self topezClient installTode: forceGLASSInstall scriptDirectory: scriptDirectory ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  installServer - install tODE on the server

SYNOPSIS
  installServer [-h|--help]
  installServer [-t|--topaz] --serverScriptPath=<server-script-directory> 
  installServer [-t|--topaz] --clientScriptPath=<client-script-directory>
  installServer 

DESCRIPTION
  With no arguments, install tODE into a "seaside extent" (an extent with GLASS already installed).
  The standard installation involves the following steps:
    1. upgrade GLASS to 1.0-beta9.1
    2. install Metacello from github://dalehenrich/metacello-work:master/repository
    3. install GLASS1 from github://glassdb/glass:master/repository
    4. install Tode from github://dalehenrich/tode:master/repository
  If tODE has already been installed, step 1 is skipped and the remaining steps are performed.

  For each of the steps, installServer executes a Smalltalk script that is loaded from a directory
  on disk. If neither --clientScriptPath nor --serverScriptPath is specified then installServer expects
  to find a directory called `updateServer` as a sibling to the `repository` directory from which the
  BaselineOfTode has been installed on the client system.

  If --clientScriptPath is specified, the scripts will be loaded from the specified directory on
  the client system. If <client-script-directory> is a relative path, the path will be appended
  to TDShell class>>serverScriptsHome.

  If --serverScriptPath is specified, the scripts will be loaded from the specified directory on
  the server system - where the stone and gems are executing. If <server-script-directory> is a 
  relative path, the path will be appended to TDShell class>>serverScriptsHome.

  If --topaz is present, instead of executing the install script, it is returned as a topaz script.

EXAMPLES
  installServer -h
  installServer
  installServer --clientScriptPath=installTode
  installServer --clientScriptPath=/opt/git/tode/installTode
  installServer --serverScriptPath=install
  installServer --serverScriptPath=/opt/git/todeHome/install
  installServer --topaz --clientScriptPath=/opt/git/tode/installTode

')
				interact ]