accessing
tdShell
	tdShell
		ifNil: [ 
			tdShell := TDShell new
				sessionDescription: sessionDescription;
				yourself ].
	^ tdShell