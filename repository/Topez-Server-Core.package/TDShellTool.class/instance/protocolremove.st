as yet unclassified
protocolremove
  <manPage: 'protocol' sub: 'remove' synopsis:
    '
  protocol remove <class-name> <protocol-name>
           remove @<class-path> <protocol-name>
'
  description: 'Remove method <protocol-name> from <class-name>'>
  | clsName theClass |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  ^ self protocol: theClass remove: (tokens copyFrom: 3 to: tokens size)