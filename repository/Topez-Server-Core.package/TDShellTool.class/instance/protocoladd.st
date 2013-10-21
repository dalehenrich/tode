as yet unclassified
protocoladd
  <manPage: 'protocol' sub: 'add' synopsis:
    '
  protocol add <class-name> <protocol-name> [ <protocol-name> ... ]
           add @<class-path> <protocol-name> [ <protocol-name> ... ]
'
  description: 'Add method <protocol-name> to <class-name>'>
  | clsName theClass |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  ^ self protocol: theClass add: (tokens copyFrom: 3 to: tokens size)