as yet unclassified
getMenu: aMenu for: menuTarget
	self menuActionSpec
		do: [ :spec | 
			| char shortCut |
			shortCut := '.'.
			(spec at: 2)
				ifNotNil: [ :codePoint | 
					char := Character codePoint: codePoint.
					shortCut := ' (' , char asString , ')' ].
			aMenu
				add: (spec at: 1) , shortCut
				target: menuTarget
				selector: #executeMenuAction:
				argument: (spec at: 3) ].
	^ aMenu