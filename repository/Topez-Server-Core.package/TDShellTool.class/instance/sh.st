as yet unclassified
sh
  "sh [ <path> ]"

  | newTopez node |
  newTopez := self topez spawnWindow.
  node := tokens size > 1
    ifTrue: [ self topez lookup: (tokens at: 2) ]
    ifFalse: [ objIn asTDObjectNode: nil topez: newTopez aspect: #'view' ].
  newTopez currentNode: node