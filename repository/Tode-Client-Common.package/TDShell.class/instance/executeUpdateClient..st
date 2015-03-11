built-ins
executeUpdateClient: command
	| options |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('scriptPath' nil #required)}
		optionsAndArguments: [ :opts :args | options := opts ].
	options
		at: 'help'
		ifAbsent: [ 
			| scriptPath |
			scriptPath := options at: 'scriptPath' ifPresent: [ :path | path ] ifAbsent: [ self class todePharoPath ].
			self class resetWorldMenu ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  updateClient - update tODE in client

SYNOPSIS
  updateClient --help
  updateClient --scriptPath=<script-directory> 
 
DESCRIPTION
  Update the tODE software on the client.

  With no options, the Smalltalk script `$GS_HOME/pharo/todeLoad.st` is executed in the client.

  With the `--scriptPath` option, the Smalltalk script `<script-directory>/todeLoad.st is executed
  instead.

EXAMPLES
  updateClient --help
  updateClient 
  updateClient --scriptPath=/opt/git/tode/updateClientTodeScripts
') interact ]