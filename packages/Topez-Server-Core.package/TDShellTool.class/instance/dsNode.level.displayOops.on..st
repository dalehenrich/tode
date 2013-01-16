as yet unclassified
dsNode: node level: level displayOops: displayOops on: stream
  "ds [<path>] [<level>]"

  node isLeaf
    ifTrue: [ 
      stream
        nextPutAll: (node printString , ':') asText allBold;
        cr.
      node contents
        tzNodeDisplayOn: stream
        limit: self characterLimit
        displayOops: displayOops
        compacted: true.
      ^ stream contents ].
  stream
    nextPutAll: node printString asText allBold;
    nextPutAll: ' ('.
  node dotSelfObject
    tzNodeDisplayOn: stream
    limit: self characterLimit
    displayOops: displayOops
    compacted: true.
  stream
    nextPutAll: '):';
    cr.
  self
    dsChildren: node
    indent: 1
    level: level
    displayOops: displayOops
    on: stream.
  ^ stream contents