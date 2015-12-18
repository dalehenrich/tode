*roassal2-exportervw
visualworksName
	^ (#('WA' 'SU' 'CT') includes: (self name copyFrom: 1 to: 2))
		ifTrue: ['Seaside.', self name]
		ifFalse: [self name]