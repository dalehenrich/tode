menu support
apply: menuSpec forKeyMappingsTo: aTextEditor editor: aTodeCodeEditor
	menuSpec
		do: [ :spec | 
			| label |
			label := spec at: 1.
			label isString
				ifTrue: [ 
					label = '-'
						ifTrue: [  ]
						ifFalse: [ 
							(spec at: 2)
								ifNotNil: [ :char | 
									char isCharacter
										ifTrue: [ 
											| selector |
											selector := spec at: 3.
											aTextEditor bindCharacter: char to: selector for: aTodeCodeEditor ] ] ] ]
				ifFalse: [ 
					| assoc |
					assoc := label.
					self apply: assoc value forKeyMappingsTo: aTextEditor editor: aTodeCodeEditor ] ]