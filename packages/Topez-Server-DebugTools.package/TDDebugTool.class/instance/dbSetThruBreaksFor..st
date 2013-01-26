as yet unclassified
dbSetThruBreaksFor: node
  | originalBreakPoints frame method |
  stackNode := node.
  frame := self dbStack currentFrame.
  method := frame method.
  originalBreakPoints := method _allBreakpoints.
  ^ originalBreakPoints