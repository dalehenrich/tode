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
  ^ self
    dsNode: node
    level: level
    displayOops: true
    on: stream