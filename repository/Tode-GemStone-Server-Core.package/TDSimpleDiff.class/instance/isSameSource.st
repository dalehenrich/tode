testing
isSameSource
  ^ (self formatSource: self source) withSqueakLineEndings
    = (self formatSource: self selectedSource) withSqueakLineEndings