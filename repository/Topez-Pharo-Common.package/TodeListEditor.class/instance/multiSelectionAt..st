multiple selection
multiSelectionAt: anIndex
	| elt |
	elt := self list at: anIndex ifAbsent: [ nil ].
	^ self listSelections at: anIndex ifAbsent: [ false ]