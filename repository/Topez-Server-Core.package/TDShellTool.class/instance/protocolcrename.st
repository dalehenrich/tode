as yet unclassified
protocolcrename
  <manPage: 'protocol' sub: 'crename' synopsis: '
  protocol crename <class-name> <protocol-name> <new-protocol-name>
           crename @<class-path> <protocol-name> <new-protocol-name>
' description:
    'Rename class method <protocol-name> to <new-protocol-name> for <class-name>'>
  | clsName theClass protoName newProtoName |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  protoName := tokens at: 3.
  newProtoName := tokens at: 4.
  ^ self protocol: theClass class rename: protoName to: newProtoName