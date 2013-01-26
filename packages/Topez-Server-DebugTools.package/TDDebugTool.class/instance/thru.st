as yet unclassified
thru
  "db thru"

  | node |
  node := self defaultHomeNode.
  self dbSetThruBreaksFor: node during: [ self dbStep: #'over' for: node ].
  ^ self dbFinishStep: stackNode