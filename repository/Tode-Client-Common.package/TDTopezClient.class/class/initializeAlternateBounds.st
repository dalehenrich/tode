window bounds
initializeAlternateBounds
  "self initializeAlternateBounds"

  Bounds := self createAlternateBoundsDictionary.
  bounds := self offsetBounds: self windowOffset.
