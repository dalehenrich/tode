accesing
nameSpaceImports
	| imports result |
	imports := Set with: #Smalltalk with: #Squeak.
	imports addAll: self namespaces.
	self classes do: 
		[ :ea | 
		(ea name copyFrom: 1 to: 2) = 'WA' ifTrue: [ imports add: #Seaside ].
		(ea superclass name copyFrom: 1 to: 2) = 'WA' ifTrue: [ imports add: #Seaside ] ].
	imports remove: self environment asSymbol ifAbsent:["it was not there"].
	result := String new writeStream.
	imports do: 
		[ :ea | 
		result
			nextPutAll: 'private ';
			nextPutAll: ea;
			nextPutAll: '.*' ]
		separatedBy: [ result space ].
	^ result contents