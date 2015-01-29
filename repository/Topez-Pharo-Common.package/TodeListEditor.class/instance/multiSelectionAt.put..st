multiple selection
multiSelectionAt: anIndex put: aBool
	| elt |
	
	elt := self list at: anIndex ifAbsent: [ nil ].
	self listSelections at: elt put: aBool.
	^ self listIndex: anIndex