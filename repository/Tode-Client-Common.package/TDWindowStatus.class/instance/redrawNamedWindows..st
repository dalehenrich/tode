accessing
redrawNamedWindows: newBounds
	(windows select: [ :each | each notNil ])
		do: [ :win | 
			| bounds winLocation |
			winLocation := win windowLocation ifNil: [ #evaluator ].
			bounds := newBounds at: winLocation.
			win
				extent: bounds extent;
				position: bounds origin ]