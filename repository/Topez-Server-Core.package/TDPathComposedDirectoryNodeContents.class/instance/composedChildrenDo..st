directory compat
composedChildrenDo: aBlock
  | composedMap |
  composedMap := self childMapForComposition: true.
  ^ composedMap values
    do: [ :assoc | aBlock value: assoc key node value: assoc value ]