interactions
addExternalInteractions: id element: element
	| aNumber |
	[aNumber := self alignPoint: (element trachelShape center)] on: Error do: [aNumber := 0].
	(interactions at: element ifAbsent: [OrderedCollection new]) 
		do: [ :i |	 i external = true
			ifTrue: [ self afterStream add: [:e | i addEventHandlers: stream id: id  element: element center: aNumber] ]]