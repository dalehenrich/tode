as yet unclassified
ds
  "ds [<path>] [<level>]"

  | node stream count level |
  level := 1.
  node := tokens size = 1
    ifTrue: [ topez currentNode ]
    ifFalse: [ topez lookup: (tokens at: 2) ].
  tokens size > 2
    ifTrue: [ level := (tokens at: 3) asNumber ].
  stream := TextStream on: Text new.
  node isLeaf
    ifTrue: [ 
      stream
        nextPutAll: (node printString , ':') asText allBold;
        cr;
        nextPutAll: node contents tzNodeDisplay.
      ^ stream contents ].
  stream
    nextPutAll: node printString asText allBold;
    nextPutAll: ' ('.
  node dotSelfObject tzNodeDisplayOn: stream limit: 160 compacted: true.
  stream
    nextPutAll: '):';
    cr.
  count := 0.
  self
    dsChildren: node
    indent: 1
    level: level
    on: stream.
  ^ stream contents