stack actions
resume: aContextOopType
	(minimalStackClientElement stackDebuggingActions
		detect: [ :each | each title = 'continue' ]) action value