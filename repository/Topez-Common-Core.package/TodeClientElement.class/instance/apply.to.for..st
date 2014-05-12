menu support
apply: menuSpec to: aMenu for: menuTarget
	| maxLength |
	maxLength := 0.
	menuSpec
		do: [ :spec | 
			| length label |
			label := (spec at: 1) isString
				ifTrue: [ spec at: 1 ]
				ifFalse: [ (spec at: 1) key ].
			length := label size.
			length > maxLength
				ifTrue: [ maxLength := length ] ].
	menuSpec
		do: [ :spec | 
			| label |
			label := spec at: 1.
			label isString
				ifTrue: [ 
					label = '-'
						ifTrue: [ aMenu addLine ]
						ifFalse: [ 
							(spec at: 2) ifNotNil: [ :char | label := (label padRightTo: maxLength) , ' (' , char asString , ')' ].
							spec size == 3
								ifTrue: [ 
									aMenu
										add: label
										target: menuTarget
										selector: #executeMenuAction:
										argument: (spec at: 3) ]
								ifFalse: [ 
									spec size == 6
										ifTrue: [ 
											| sel menuCategory initialStatus |
											sel := #executeMenuAction:.
											menuCategory := spec at: 5.
											initialStatus := spec at: 6.	"#on #off"
											self menuCategoryStatusDict at: menuCategory put: initialStatus.
											(spec at: 4)
												ifNotNil: [ 
													sel := (spec at: 4) asSymbol.
													aMenu
														addWithLabel: label
														enablementSelector: [ (self menuCategoryStatusDict at: menuCategory) == #on ]
														target: menuTarget
														selector: sel
														argumentList: {(spec at: 3)} ] ]
										ifFalse: [ 
											aMenu
												add: label
												target: menuTarget
												selector: (spec at: 4) asSymbol
												argument: (spec at: 3)	"presumably #executeLocalMenuAction:, but not required" ] ] ] ]
				ifFalse: [ 
					| assoc subMenu |
					subMenu := (Smalltalk at: #MenuMorph) new.
					assoc := label.
					label := assoc key.
					self apply: assoc value to: subMenu for: menuTarget.
					aMenu add: label subMenu: subMenu ] ].
	^ aMenu