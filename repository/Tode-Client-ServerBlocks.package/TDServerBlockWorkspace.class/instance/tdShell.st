accessing
tdShell
	tdShell
		ifNil: [ 
			tdShell := TDShell new
				sessionDescription: sessionDescription;
				yourself.
			bindings ifNil: [ self initializeBindings ].
			bindings at: 'shell' put: tdShell ].
	^ tdShell