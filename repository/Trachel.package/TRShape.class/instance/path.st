private
path
	session == Smalltalk session
		ifFalse: [ path := nil ].
	path ifNil: [ self computePath ].
	^ path