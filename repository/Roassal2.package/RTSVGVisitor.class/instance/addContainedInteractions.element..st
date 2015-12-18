interactions
addContainedInteractions: id element: element
	| aNumber |
	[aNumber := self alignPoint: (element trachelShape center)] on: Error do: [aNumber := 0].
	(interactions at: element ifAbsent: [OrderedCollection new]) 
		do: [ :i |	 i contained = true
			ifTrue: [ i addEventHandlers: stream id: id  element: element center: aNumber] ]