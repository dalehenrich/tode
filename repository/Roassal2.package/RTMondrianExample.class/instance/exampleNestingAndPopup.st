sources
exampleNestingAndPopup
	| b |
	b := RTMondrian new.
	b interaction noInteractions.

	b interaction popup group: [ :group :el |
		| background elements | 
		elements := OrderedCollection new.
		background := (RTBox new color: (Color green alpha: 0.5)) element.
		el model timesRepeat: [ 
				elements add: (RTBox new size: 10; color: (Color purple alpha: 0.5)) element.
				].
		RTGridLayout on: elements.
		RTNest new centerOn: background elements: elements.
		group add: background .
		group addAll: elements ].

	b shape rectangle size: #yourself.
	b nodes: (1 to:50).
	b layout grid.
	
	b build.
	^ b view