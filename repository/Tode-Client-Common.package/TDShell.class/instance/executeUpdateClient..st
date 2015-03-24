built-ins
executeUpdateClient: command
	| options |
	command getOptsMixedLongShort: {#('help' $h #none)} optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			Metacello image
				baseline: 'Metacello';
				get;
				load.
			Metacello image
				baseline: 'Tode';
				get;
				load.
			self class resetWorldMenu ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateClient - update tODE in client

SYNOPSIS
  updateClient --help

DESCRIPTION
  Update the Metacello and tODE software on the client, using the following Metacello statements:

    Metacello image
      baseline: ''Metacello'';
      get;
      load.
    Metacello image
      baseline: ''Tode'';
      get;
      load.

EXAMPLES
  updateClient --help
  updateClient 
') interact ]