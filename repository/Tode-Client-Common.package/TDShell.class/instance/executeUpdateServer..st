built-ins
executeUpdateServer: command
	| options |
	command getOptsMixedLongShort: {#('help' $h #none)} optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			^ self
				evaluateString:
					'project refresh --locked
project load tODE
project list' ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateServer - update tODE installation on the server

SYNOPSIS
  updateServer [-h|--help]

DESCRIPTION
  Update the tODE software on the server, using the following tODE shell statements:

    project refresh --locked
    project load tODE
    project list

EXAMPLES
  updateServer -h
  updateServer
') interact ]