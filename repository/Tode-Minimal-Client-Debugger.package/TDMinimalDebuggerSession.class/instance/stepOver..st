stack actions
stepOver: aContextOopType
	(minimalStackClientElement stackDebuggingActions
		detect: [ :each | each title = 'step over' ]) action value