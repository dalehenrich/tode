visitor
visit
	self setCanvas.
	self visitView: self view.
	self afterStream do: [ :s | s value: 1 ]