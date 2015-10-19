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
			#('default' nil #required).
			#('client' nil #required).
			#('clear' nil #none)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			options at: 'set' ifPresent: [ :ignored | self debugMode: true ].
			options at: 'clear' ifPresent: [ :ignored | self debugMode: false ].
			options
				at: 'client'
				ifPresent: [ :arg | 
					| bool |
					bool := arg = 'true'.
					self clientDebugMode: bool ].
			options
				at: 'default'
				ifPresent: [ :arg | 
					| default |
					default := arg = 'true'.
					self class debugMode: default.
					self debugMode: default ].
			^ 'Current debugMode is '
				,
					(self debugMode
						ifTrue: [ 'SET' ]
						ifFalse: [ 'CLEAR' ]) ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  debugMode - set and clear debugMode

SYNOPSIS
  debugMode [-h | --help] [--set | --clear | --default=true|false | --client=true|false]

DESCRIPTION
  When debugMode is set (`debugMode --set`), a debugger is brought up for all errors. 

  When debugMode is cleared (`debugMode --clear`), error descriptions are simply 
  displayed as the command response.

  With no arguments, the current debugMode setting is displayed.

  Change the default debugMode using --default (`debugMode --default=false`).

  To enable/disable option to debug server errors on client-side use 
  `debugMode --client=true` and `debugMode --client=false`.

EXAMPLES
  debugMode -h
  debugMode --default=true
  debugMode --set
  debugMode --clear
  debugMode

  debugMode --client=true
  debugMode --client=false
') interact ]