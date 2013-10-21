as yet unclassified
protocolcremove
  <manPage: 'protocol' sub: 'cremove' synopsis:
    '
  protocol cremove <class-name> <protocol-name>
           cremove @<class-path> <protocol-name>
'
  description: 'Remove class method <protocol-name> from <class-name>'>
  | clsName theClass |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  ^ self protocol: theClass class remove: (tokens copyFrom: 3 to: tokens size)