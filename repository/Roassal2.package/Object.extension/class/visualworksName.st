*roassal2-core
visualworksName
	(#('WA' 'SU' 'CT') includes: (self name copyFrom: 1 to: 2))
		ifTrue: [^'Seaside.', self name].
	^ self == Object ifTrue: ['Core.Object'] ifFalse: [self name]