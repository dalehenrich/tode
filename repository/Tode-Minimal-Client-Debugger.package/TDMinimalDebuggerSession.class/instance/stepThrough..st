stack actions
stepThrough: aContextOopType
	(minimalStackClientElement stackDebuggingActions
		detect: [ :each | each title = 'step thru' ]) action value