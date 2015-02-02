accessing
operations
  | ops |
  ops := self merger operations select: self stFilterBlock.
  ops isEmpty
    ifTrue: [ 
      "if the filtered list is empty, ignore the filter ... for now ... could be disturbing to see an empty list"
      self inform: 'Filtered list is empty, showing ALL!'.
      ^ self merger operations ].
  ^ ops