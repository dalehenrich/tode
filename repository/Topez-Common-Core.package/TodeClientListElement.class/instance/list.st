accessing
list
	"association: 
      key   - list
      value - selected index"

	| assoc |
	self firstList
		ifNotNil: [ 
			assoc := self firstList.
			firstList := nil ]
		ifNil: [ assoc := self topez getListForClientListElement: self ].
	(assoc isKindOf: Association)
		ifFalse: [ ^ assoc ].
	assoc value ifNotNil: [ self selectedIndex: assoc value ].
	^ assoc key