dictionary compat
removeKey: aNodeName
  | theNode |
  theNode := self
    parentOf: aNodeName
    ifAbsent: [ self error: 'No child named: ' , aNodeName printString ].
  ^ theNode removeChildNamed: aNodeName