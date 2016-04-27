actions
constructActionsFrom: menuSpec addTo: actions in: category
	| lastAction shortCutModifier |
	shortCutModifier := Smalltalk os defaultModifier.
	lastAction := nil.
	menuSpec
		do: [ :spec | 
			| label |
			label := spec at: 1.
			label isString
				ifTrue: [ | keymap |
					label = '-'
						ifTrue: [ lastAction ifNotNil: [ lastAction withSeparatorAfter ] ]
						ifFalse: [ (spec at: 2)
								ifNotNil: [ :char | 
									char isCharacter
										ifTrue: [ keymap := shortCutModifier + char asShortcut ] ].
							spec size == 3
								ifTrue: [ actions
										add:
											(lastAction := GLMGenericAction new
												action: [ self executeMenuAction: (spec at: 3) ];
												title: label;
												keymap: keymap;
												showTitle;
												category: category;
												yourself) ]
								ifFalse: [ spec size == 6
										ifTrue: [ | actionBlock sel menuCategory menuEnabled |
											sel := #executeMenuAction:.
											menuCategory := spec at: 5.
											menuEnabled := spec at: 6.
											(spec at: 4) ifNotNil: [ sel := (spec at: 4) asSymbol ].	"executeLocalMenuAction:keyboardEvent:?"
											(self stackEnabledMenuCategories includes: menuCategory)
												ifTrue: [ actionBlock := [ self perform: sel withArguments: {(spec at: 3)} ] ]
												ifFalse: [ actionBlock := [  ].
													label := Text string: label attribute: TextColor gray ].
											actions
												add:
													(lastAction := GLMGenericAction new
														action: actionBlock;
														title: label;
														category: category;
														keymap: keymap;
														showTitle;
														yourself) ]
										ifFalse: [ actions
												add:
													(lastAction := GLMGenericAction new
														action: [ self perform: (spec at: 4) asSymbol with: (spec at: 3) ];
														title: label;
														showTitle;
														keymap: keymap;
														category: category;
														yourself)	"#executeLocalMenuAction:" ] ] ] ]
				ifFalse: [ | assoc cat subMenuSpec |
					assoc := spec at: 1.
					cat := assoc key.
					subMenuSpec := assoc value.
					self constructActionsFrom: subMenuSpec addTo: actions in: cat ] ]