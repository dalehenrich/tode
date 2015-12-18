tests - use in layout
testUseInLayout

	b
		view: view; 
		notUseInLayout; 
		connectTo: [ :v | v + 1 ].
	RTTreeLayout on: view elements.
	
	self assert: (view elements collect: #position) asArray equals: ((Array new: 10) at: 1 put: ((7.5@7.5)); at: 2 put: ((15.5@7.5)); at: 3 put: ((23.5@7.5)); at: 4 put: ((31.5@7.5)); at: 5 put: ((39.5@7.5)); at: 6 put: ((47.5@7.5)); at: 7 put: ((55.5@7.5)); at: 8 put: ((63.5@7.5)); at: 9 put: ((71.5@7.5)); at: 10 put: ((79.5@7.5)); yourself)