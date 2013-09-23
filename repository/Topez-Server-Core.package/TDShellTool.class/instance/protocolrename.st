as yet unclassified
protocolrename
  <manPage: 'protocol' sub: 'rename' synopsis: '
  protocol rename <class-name> <protocol-name> <new-protocol-name>
           rename @<class-path> <protocol-name> <new-protocol-name>
' description:
    'Rename method <protocol-name> to <new-protocol-name> for <class-name>'>
  | clsName theClass protoName newProtoName |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  protoName := tokens at: 3.
  newProtoName := tokens at: 4.
  ^ self protocol: theClass rename: protoName to: newProtoName