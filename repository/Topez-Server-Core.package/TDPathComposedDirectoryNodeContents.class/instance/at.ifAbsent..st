dictionary compat
at: aNodeName ifAbsent: absentBlock
  | theNode |
  theNode := self parentOf: aNodeName ifAbsent: [ ^ absentBlock value ].
  ^ theNode childNamed: aNodeName