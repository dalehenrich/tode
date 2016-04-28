stack actions
stepInto: aContextOopType
	(minimalStackClientElement stackDebuggingActions
		detect: [ :each | each title = 'step into' ]) action value