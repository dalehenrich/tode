evaluator engine
executeLogin: command
	| options arguments |
	command
		getOptsMixedLongShort:
			{#('help' $h #none).
			#('netldi' nil #required)}
		optionsAndArguments: [ :opts :args | 
			options := opts.
			arguments := args ].
	options
		at: 'help'
		ifAbsent: [ 
			options
				at: 'netldi'
				ifPresent: [ :netldiName | 
					| sessionDescription |
					sessionDescription := self topezClient sessionDescription copy.
					sessionDescription netLDI: netldiName.
					self topezClient sessionDescription: sessionDescription.
					shellWindow setLabel: self label , ' (netldi=', netldiName , ')' ] ]
		ifPresent: [ :ignored | 
			^ (TDMultiLineText new
				prompt: 'Help for ' , command command;
				template:
						'NAME
  login - modify session description parameters for lgin

SYNOPSIS
  login [-h|--help][--netldi=<netldi-name>]

DESCRIPTION
  Modify copy of session description to use the desired session description value
  for this session only.

  Currently it is only possible to change the name of the netldi to use on login.

  If you are making permanent changes you should modify the session description itself.

EXAMPLES
  login -h

  login --netldi=50377

See Also:
  OGCustomSessionDescription
') interact ]