as yet unclassified
removeChildNamed: childName
  | node |
  node := self
    childNamed: childName
    ifAbsent: [ self error: 'No child named: ' , childName printString ].
  self removeChildNode: node