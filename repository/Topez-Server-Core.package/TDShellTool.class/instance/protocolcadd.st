as yet unclassified
protocolcadd
  <manPage: 'protocol' sub: 'cadd' synopsis:
    '
  protocol cadd <class-name> <protocol-name>
           cadd @<class-path> <protocol-name>
'
  description: 'Add class method <protocol-name> to <class-name>'>
  | clsName theClass |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  ^ self protocol: theClass class add: (tokens copyFrom: 3 to: tokens size)