accessing
list
	"association: 
      key   - list
      value - selected index"

	| assoc |
	firstList
		ifNotNil: [ 
			(firstList isKindOf: Association)
				ifTrue: [ 
					assoc := self firstList.
					firstList := nil ]
				ifFalse: [ assoc := firstList -> 0 ] ]
		ifNil: [ assoc := self topez getListForClientListElement: self ].
	(assoc isKindOf: Association)
		ifFalse: [ ^ assoc ].
	self selectedIndex: assoc value.
	^ assoc key