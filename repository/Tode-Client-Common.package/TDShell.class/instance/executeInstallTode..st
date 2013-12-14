evaluator engine
executeInstallTode: command
	| options arguments |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('clientScriptPath' nil #required).
			#('force' $f #none).
			#('serverScriptPath' nil #required).
			#('topaz' $t #none)}
		optionsAndArguments: [ :opts :args | 
			options := opts.
			arguments := args ].
	options
		at: 'help'
		ifAbsent: [ 
			| forceGLASSInstall scriptDirectory |
			options at: 'force' ifPresent: [ :ignored | forceGLASSInstall := true ] ifAbsent: [ forceGLASSInstall := false ].
			options
				at: 'clientScriptPath'
				ifPresent: [ :path | scriptDirectory := self filetreeUtilityClass directoryFromPath: path ]
				ifAbsent: [ 
					options
						at: 'serverScriptPath'
						ifPresent: [ :path | scriptDirectory := self filetreeUtilityClass directoryFromPath: path ]
						ifAbsent: [ scriptDirectory := self scriptDirectoryFromBaselineOfTode ] ].
			options at: 'topaz' ifPresent: [ ^ self topezClient installTodeTopazScript: forceGLASSInstall scriptDirectory: scriptDirectory ].
			^ self topezClient installTode: forceGLASSInstall scriptDirectory: scriptDirectory ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  installTode - install tODE on the server

SYNOPSIS
  installTode [-h|--help]
  installTode [-t|--topaz] --serverScriptPath=<server-script-directory> 
  installTode [-t|--topaz] --clientScriptPath=<client-script-directory>
  installTode 

DESCRIPTION
  With no arguments, install tODE into a "seaside extent" (an extent with GLASS already installed).
  The standard installation involves the following steps:
    1. upgrade GLASS to 1.0-beta9.1
    2. install Metacello from github://dalehenrich/metacello-work:master/repository
    3. install GLASS1 from github://glassdb/glass:master/repository
    4. install Tode from github://dalehenrich/tode:master/repository
  If tODE has already been installed, step 1 is skipped and the remaining steps are performed.

  For each of the steps, installTode executes a Smalltalk script that is loaded from a directory
  on disk. If neither --clientScriptPath nor --serverScriptPath is specified then installTode expects
  to find a directory called `installTode` as a sibling to the `repository` directory from which the
  BaselineOfTode has been installed on the client system.

  If --clientScriptPath is specified, the scripts will be loaded from the specified directory on
  the client system.

  If --serverScriptPath is specified, the scripts will be loaded from the specified directory on
  the server system - where the stone and gems are executing.

  If --topaz is present, instead of executing the install script, it is returned as a topaz script.

EXAMPLES
  installTode -h
  installTode
  installTode --clientScriptPath=/opt/git/tode/installTode
  installTode --serverScriptPath=/opt/git/todeHome/install
  installTode --topaz --clientScriptPath=/opt/git/tode/installTode

') interact ]