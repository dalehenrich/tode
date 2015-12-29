adding
expandDirection: aDirection with: nodes
	expansion at: aDirection key put: nodes.
	RTPopup removeLastPopup.
	self exploreOnDirection: aDirection.
	((builder layout rtValue: self) translator: (RTSmoothLayoutTranslator new nbCycles: 0.25))
		on: (builder nodes collect: [ :n | n element ]) asGroup.
	self element view canvas signalUpdate