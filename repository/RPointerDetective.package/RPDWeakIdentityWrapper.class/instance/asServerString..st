as yet unclassified
asServerString: atODEShell
	| target |
	target := self wrappedObject.
	self stringName ifNil: [ self stringName: (self onServerName: atODEShell) ].
	^ self stringName