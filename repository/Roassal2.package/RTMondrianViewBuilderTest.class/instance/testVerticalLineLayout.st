layout
testVerticalLineLayout
	| b |
	b := RTMondrianViewBuilder new.
	b shape rectangle.
	b nodes: (1 to: 5).
	b verticalLineLayout.
	b applyLayout.
	self assert: (b view elements collect: #position) asArray equals: 
((Array new: 5) at: 1 put: ((2.5@2.5)); at: 2 put: ((2.5@17.5)); at: 3 put: ((2.5@32.5)); at: 4 put: ((2.5@47.5)); at: 5 put: ((2.5@62.5)); yourself).