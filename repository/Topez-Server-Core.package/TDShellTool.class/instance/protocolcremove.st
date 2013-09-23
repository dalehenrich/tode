as yet unclassified
protocolcremove
  <manPage: 'protocol' sub: 'cremove' synopsis: '
  protocol cremove <class-name> <protocol-name>
           cremove @<class-path> <protocol-name>
' description: 'Remove class method <protocol-name> from <class-name>'>
  | clsName theClass protoName |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  protoName := tokens at: 3.
  ^ self protocol: theClass class remove: protoName