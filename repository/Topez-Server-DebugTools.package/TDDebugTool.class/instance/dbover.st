as yet unclassified
dbover
  "db over"

  | node |
  node := self defaultHomeNode.
  self dbStep: #'over' for: node.
  ^ self dbFinishStep: stackNode