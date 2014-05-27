built-ins
executeUpdateClient: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('clientRepo' nil #required)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'clientRepo'
				ifPresent: [ :todeRepository | 
					| result |
					[ 
					Metacello new
						baseline: 'Tode';
						repository: todeRepository;
						get.
					result := Metacello new
						baseline: 'Tode';
						repository: todeRepository;
						onConflict: [ :ex | ex allow ];
						load: 'GemStone Dev' ]
						on: Warning
						do: [ :ex | 
							Transcript
								cr;
								show: 'WARNING: ' , ex description.
							ex pass ].
					self class resetWorldMenu.
					^ result printString ].
			^ 'Must specify options:
  updateClient --help
  updateClient --clientRepo=github://dalehenrich/tode:master
  updateClient --clientRepo=filetree:///opt/git/tode/repository' ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateClient - update tODE in client

SYNOPSIS
  updateClient --help
  updateClient --clientRepo=<tode-repository-string> 
 
DESCRIPTION
  Update the tODE software on the client.

  --clientRepo option specifies the repository form which tODE will be loaded.

EXAMPLES
  updateClient --help
  updateClient --clientRepo=github://dalehenrich/tode:master
  updateClient --clientRepo=filetree:///opt/git/tode/repository
')
				interact ]