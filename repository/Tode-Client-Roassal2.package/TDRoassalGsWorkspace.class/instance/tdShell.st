accessing
tdShell
	tdShell
		ifNil: [ 
			tdShell := TDShell new
				openOnSessionDescription: sessionDescription;
				yourself ].
	^ tdShell