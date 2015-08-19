menu support
apply: menuSpec forKeyMappingsTo: aTextEditor editor: aTodeCodeEditor
	menuSpec
		do: [ :spec | 
			| label |
			label := spec at: 1. "label"
			label isString
				ifTrue: [ 
					label = '-'
						ifTrue: [  ]
						ifFalse: [ 
							(spec at: 2) "shortcut character"
								ifNotNil: [ :char | 
									char isCharacter
										ifTrue: [ 
											| selector |
											selector := spec at: 3. "menu selector"
											(spec size == 3 or: [(spec at: 4) isNil])
												ifTrue: [ 
													aTextEditor
														bindCharacter: char
														to: #executeMenuAction:
														with: selector
														for: aTodeCodeEditor ]
												ifFalse: [ 
													aTextEditor
														bindCharacter: char
														to: (spec at: 4) "expected to be #'executeLocalMenuAction:'"
														with: selector
														for: aTodeCodeEditor ] ] ] ] ]
				ifFalse: [ 
					| assoc |
					assoc := label.
					self apply: assoc value forKeyMappingsTo: aTextEditor editor: aTodeCodeEditor ] ]