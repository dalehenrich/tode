private
offsets: tj q: tq
	| offs |
	offs := Array new: tj.
	(0 to: tj-1) do: [ :ti |
		offs at: ti+1 put: ((tq*ti) raisedTo: (self logB: tj*tq) ) ].
	^ offs