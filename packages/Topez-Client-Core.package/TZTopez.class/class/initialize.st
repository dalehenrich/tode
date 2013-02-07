class initialization
initialize
  "TZTopez initialize.
	TZGsTopez initialize.
	TZNativeTopez initialize.
	TDGsTopez initialize."

  Bounds := Dictionary new.
  self initializeBounds.
  bounds := self offsetBounds: self windowOffset