adding - edges
edges: objects fromAll: fromAllBlock to: toBlock
	
	| associations |
	associations := OrderedCollection new.
	objects do: [ :obj |
		| to |
		to := toBlock rtValue: obj.
		(fromAllBlock rtValue: obj) do: [:from | 
			associations add: (from -> to)
		]
	].
	^ self edgesFromAssociations: associations