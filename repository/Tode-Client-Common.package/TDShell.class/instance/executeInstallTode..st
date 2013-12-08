evaluator engine
executeInstallTode: command
	| options arguments |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('serverScriptPath' nil #required).
			#('clientScriptPath' nil #required)}
		optionsAndArguments: [ :opts :args | 
			options := opts.
			arguments := args ].
	options
		at: 'help'
		ifAbsent: [ self installTode ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  installTode - install tOde on the servert

SYNOPSIS
  installTode [-h|--help]
  installTode --serverScriptPath=<server-directory-path>
  installTode --clientScriptPath=<client-directory-path>

DESCRIPTION
  Install tOde.

EXAMPLES
  installTode -h
  installTode
  installTode --serverScriptPath=/opt/git/tode/install/installTode.ston
  installTode --clientScriptPath=/opt/git/tode/install/installTode.ston

') interact ]