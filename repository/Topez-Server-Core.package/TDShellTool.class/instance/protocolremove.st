as yet unclassified
protocolremove
  <manPage: 'protocol' sub: 'remove' synopsis: '
  protocol remove <class-name> <protocol-name>
           remove @<class-path> <protocol-name>
' description: 'Remove method <protocol-name> from <class-name>'>
  | clsName theClass protoName |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  protoName := tokens at: 3.
  ^ self protocol: theClass remove: protoName