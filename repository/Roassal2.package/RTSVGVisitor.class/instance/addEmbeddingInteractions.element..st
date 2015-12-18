interactions
addEmbeddingInteractions: id element: element
	|closings aNumber |
	[aNumber := self alignPoint: (element trachelShape center)] on: Error do: [aNumber := 0].
	closings := OrderedCollection new.
	(interactions at: element ifAbsent: [OrderedCollection new]) 
		do: [ :i |	 (i external = false and: i contained = false)
			ifTrue: [ closings add: (i addEventHandlers: stream id: id  element: element center: aNumber)] ].
	^(closings reverse)