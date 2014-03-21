accessing
firstList
	"association: 
      key   - list
      value - selected index"

	(firstList isKindOf: Association)
		ifFalse: [ ^ firstList ].
	self selectedIndex: firstList value.
	^ firstList key