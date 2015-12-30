adding
expandDirection: aDirection with: nodes
	| camera |
	camera := self element view canvas camera.
	expansion at: aDirection key put: nodes.
	RTPopup removeLastPopup.
	self exploreOnDirection: aDirection.
	((builder layout rtValue: self) translator: (RTSmoothLayoutTranslator new nbCycles: 0.25))
		on: (builder nodes collect: [ :n | n element ]) asGroup.
	camera translateTo: self element encompassingRectangle center.
	self element view canvas signalUpdate