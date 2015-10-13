built-ins
executeUpdateClient: command
	| options |
	command getOptsMixedLongShort: {#('help' $h #none)} optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			| filePath todeLoadSource |
			filePath := self class lookupPharoScript: 'todeLoad.st'.
			filePath asFileReference readStreamDo: [ :fileStream | todeLoadSource := fileStream contents ].
			Compiler evaluate: todeLoadSource.
			false
				ifTrue: [ Smalltalk snapshot: true andQuit: false ].
			self class resetWorldMenu.
			^ 'Client updated' ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateClient - update tODE in client

SYNOPSIS
  updateClient --help

DESCRIPTION
  Update the Metacello and tODE software on the client, using the todeLoad.st file in $GS_HOME/tode/sys/default|local/pharo.

EXAMPLES
  updateClient --help
  updateClient 
') interact ]