accessing
operations
  | ops |
  stFilterBlock ifNil: [ ^ self merger operations ].
  ops := self merger operations select: stFilterBlock.
  ops isEmpty
    ifTrue: [ 
      "if the filtered list is empty, ignore the filter ... for now ... could be disturbing to see an empty list"
      self inform: 'No unresolved operations!'.
      ^ self merger operations ].
  ^ ops