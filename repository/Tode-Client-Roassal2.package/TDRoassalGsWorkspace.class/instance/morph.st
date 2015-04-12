accessing
morph
	dependents ifNil: [ ^ nil ].
	dependents
		do: [ :v | 
			(v isMorph and: [ v isSystemWindow not ])
				ifTrue: [ ^ v ] ].
	^ nil