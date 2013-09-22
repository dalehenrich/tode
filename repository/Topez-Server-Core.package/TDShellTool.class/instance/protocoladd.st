as yet unclassified
protocoladd
  <manPage: 'protocol' sub: 'add' synopsis: '
  protocol add <class-name> <protocol-name>
           add @<class-path> <protocol-name>
' description: 'Add method <protocol-name> to <class-name>'>
  | clsName theClass protoName |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  protoName := tokens at: 3.
  ^ self protocol: theClass add: protoName