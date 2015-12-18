accessing
height
	height ifNil: [ height := self box height rounded ].
	^ height