as yet unclassified
dbinto
  "db into"

  | node |
  node := self defaultHomeNode.
  self dbStep: #'into' for: node.
  ^ self dbFinishStep: stackNode