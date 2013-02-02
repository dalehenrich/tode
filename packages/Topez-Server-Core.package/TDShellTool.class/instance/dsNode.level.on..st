as yet unclassified
dsNode: node level: level on: displayPolicy
  "ds [<path>] [<level>]"

  | stream |
  stream := displayPolicy stream.
  node isLeaf
    ifTrue: [ 
      stream
        nextPutAll: (node printString , ':') asText allBold;
        cr.
      node contents displayOn: displayPolicy.
      ^ self ].
  stream
    nextPutAll: node printString asText allBold;
    nextPutAll: ' ('.
  node dotSelfObject displayOn: displayPolicy.
  stream
    nextPutAll: '):';
    cr.
  self
    dsChildren: node
    indent: 1
    level: level
    on: displayPolicy