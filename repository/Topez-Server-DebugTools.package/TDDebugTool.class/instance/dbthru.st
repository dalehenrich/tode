as yet unclassified
dbthru
  "db thru"

  | node |
  node := self defaultHomeNode.
  self dbSetThruBreaksFor: node during: [ self dbStep: #'over' for: node ].
  ^ self dbFinishStep: stackNode