as yet unclassified
ds
  "ds [<path>] [<level>]"

  | node level |
  level := 1.
  node := tokens size = 1
    ifTrue: [ topez currentNode ]
    ifFalse: [ topez lookup: (tokens at: 2) ].
  tokens size > 2
    ifTrue: [ level := (tokens at: 3) asNumber ].
  ^ self ds: node level: level