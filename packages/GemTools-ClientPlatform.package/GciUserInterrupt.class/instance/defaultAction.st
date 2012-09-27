defaults
defaultAction

	| proc |
	proc := Processor activeProcess.
	self suspendedContext == nil
		ifTrue: [ ^proc debugWithTitle: 'User Interrupt' ].
	proc debug: self suspendedContext title: 'User Interrupt'
