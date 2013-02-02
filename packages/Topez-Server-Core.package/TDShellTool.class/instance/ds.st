as yet unclassified
ds
  "ds [<path>] [<level>]"

  | node displayPolicy count level |
  level := 1.
  node := tokens size = 1
    ifTrue: [ topez currentNode ]
    ifFalse: [ topez lookup: (tokens at: 2) ].
  tokens size > 2
    ifTrue: [ level := (tokens at: 3) asNumber ].
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  self dsNode: node level: level on: displayPolicy.
  ^ displayPolicy stream contents