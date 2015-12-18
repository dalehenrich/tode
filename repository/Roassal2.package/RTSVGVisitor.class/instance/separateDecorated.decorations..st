utils
separateDecorated: lines decorations: decorations
	|decorated|
	decorated := OrderedCollection new.
	decorations do: [ :d | 
		decorated add: (self getCorrespondingLine: d from: lines).
		].
	^decorated