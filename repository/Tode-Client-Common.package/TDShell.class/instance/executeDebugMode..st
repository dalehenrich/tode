built-ins
executeDebugMode: command
"    When debugMode is set (`debugMode --set), a debugger is brought up for all errors. 

    When debugMode is cleared (`debugMode --clear`), error descriptions are simply 
    displayed as the command response.

    See `debugMode -h` for more information."
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('set' nil #none).
			#('clear' nil #none)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'set'
				ifPresent: [ :ignored | 
					self class debugMode: true].
			options
				at: 'clear'
				ifPresent: [ :ignored | 
					self class debugMode: false].
			^ 'Current debugMode is ', (self class debugMode ifTrue: ['SET'] ifFalse: ['CLEAR']) ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  debugMode - set and clear debugMode

SYNOPSIS
  debugMode [-h|--help}--set|--clear]

DESCRIPTION
  When debugMode is set (`debugMode --set`), a debugger is brought up for all errors. 

  When debugMode is cleared (`debugMode --clear`), error descriptions are simply 
  displayed as the command response.

  With no arguments, the current debugMode setting is displayed.

EXAMPLES
  debugMode -h
  debugMode --set
  debugMode --clear
  debugMode
') interact ]