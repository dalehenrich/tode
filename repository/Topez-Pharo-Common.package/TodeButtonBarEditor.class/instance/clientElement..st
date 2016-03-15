accessing
clientElement: aTDClientElement
	| oldState |
	super clientElement: aTDClientElement.
	oldState := buttonBarState.
	buttonBarState := nil.
	self buildButtonBarMorph.
	oldState == buttonBarState
		ifFalse: [ 
			| newSwitchIndex |
			newSwitchIndex := (self switchSpecs collect: [ :each | each at: 1 ]) indexOf: oldState.
			newSwitchIndex > 0
				ifTrue: [ 
					"https://github.com/dalehenrich/tode/issues/242"
					"prserve old switch state"
					self switchAction: newSwitchIndex ] ]