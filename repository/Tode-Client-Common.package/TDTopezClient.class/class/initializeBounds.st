window bounds
initializeBounds
  "self initializeBounds"

  Bounds := self createBoundsDictionary.
  bounds := self offsetBounds: self windowOffset.
