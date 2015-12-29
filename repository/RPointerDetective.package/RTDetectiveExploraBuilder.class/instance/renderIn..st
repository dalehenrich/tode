view
renderIn: rView
	nodes do: [ :n | rView add: n element. lastAddedNodes add: n ].
	icons ifNotNil:[
		nodes do: [ :n | n iconOpen ifNotNil: [rView add: n iconOpen] ]
		]