directory compat
composedChildrenDo: aBlock
  | composedMap |
  composedMap := Dictionary new.
  self entryList reversed
    do: [ :entry | 
      entry
        childrenDo: [ :childNode | composedMap at: childNode name put: entry -> childNode ] ].
  ^ composedMap values
    do: [ :assoc | aBlock value: assoc key node value: assoc value ]