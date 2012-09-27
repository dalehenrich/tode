singleton
current

	| library version newClass |
	self == GciLibrary ifFalse: [self error: 'Use GciLibrary class>>current'].
	Current notNil ifTrue: [^Current].
	library := super new
		apiGciInit;
		yourself.
	version := library apiGciVersion.
	newClass := self withAllSubclasses detect: [:each | 
		each isClassForVersion: version.
	].
	Current := newClass newGCI.
	Smalltalk addToStartUpList: self.
	^Current.
