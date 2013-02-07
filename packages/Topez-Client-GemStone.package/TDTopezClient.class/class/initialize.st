class initialization
initialize
  "self initialize"

  "foos:
	TDTopezClient
  		windowOrigin: 25@0.5;
  		listWindowWidth: 26;
  		codeWindowWidth: 78;
  		initialize."

  Bounds := Dictionary new.
  self initializeBounds.
  bounds := self offsetBounds: self windowOffset