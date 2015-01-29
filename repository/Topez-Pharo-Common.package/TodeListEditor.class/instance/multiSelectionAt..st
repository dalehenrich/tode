multiple selection
multiSelectionAt: anIndex
	| elt |
	elt := self list at: anIndex ifAbsent: [ nil ].
	^ self listSelections at: elt ifAbsent: [ false ]