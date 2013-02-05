class initialization
initialize
    "self initialize"

    Bounds := Dictionary new.
    self initializeBounds.
    bounds := self offsetBounds: self windowOffset