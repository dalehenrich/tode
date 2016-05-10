querying
hasChildNamed: aNodeName
  | childNode |
  childNode := (self nodeIfNotPresnt: [ ^ false ])
    childNamed: aNodeName
    ifAbsent: [ ^ false ].
  ^ self selectBlock value: childNode