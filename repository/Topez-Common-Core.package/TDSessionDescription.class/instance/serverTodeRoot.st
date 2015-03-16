accessing
serverTodeRoot
	serverTodeRoot ifNil: [ serverTodeRoot := '$GS_HOME/tode' ].
	^ serverTodeRoot