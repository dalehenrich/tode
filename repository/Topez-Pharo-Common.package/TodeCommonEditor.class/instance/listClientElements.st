accessing
listClientElements
	| windowLabels index |
	windowLabels := self clientElementStack collect: [ :ce | ce editorWindowLabel ].
	index := UIManager default chooseFrom: windowLabels.
	index > 0
		ifTrue: [ 
			| selectedClientElement selectedIndex morph |
			morph := self morph.
			morph canDiscardEdits
				ifFalse: [ 
					morph promptForCancel
						ifTrue: [ ^ self ] ].
			selectedClientElement := self clientElementStack at: index.
			self clientElement: selectedClientElement.
			selectedIndex := selectedClientElement selectedIndex.
			selectedIndex ifNil: [ selectedIndex := 0 ].
			self listIndex: selectedIndex.
			self editor label: selectedClientElement editorWindowLabel.
			selectedIndex == 0
				ifTrue: [ 
					selectedClientElement highlightedIndex
						ifNotNil: [ :highlightedIndex | 
							highlightedIndex > 0
								ifTrue: [ self editor setListIndex: highlightedIndex ] ] ].
			self editor refreshView.
			selectedClientElement activateElement ].
	^ true