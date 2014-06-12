as yet unclassified
childNamed: childName ifAbsent: absentBlock
  | child |
  child := self basicContents
    childNamed: childName
    ifAbsent: [ ^ absentBlock value ].
  child parent: self.
  ^ child