querying
hasChildNamed: aNodeName
  | childNode |
  childNode := self node childNamed: aNodeName ifAbsent: [ ^ false ].
  ^ self selectBlock value: childNode