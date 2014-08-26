as yet unclassified
update: aspect
	aspect == #bounds
		ifTrue: [ ^ self windowStatus redrawNamedWindows: self bounds ].
	super update: aspect