multiple selection
multiSelectionAt: anIndex put: aBool
	self listSelections at: anIndex put: aBool.
	^ self listIndex: anIndex