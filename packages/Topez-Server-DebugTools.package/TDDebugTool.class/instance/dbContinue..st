as yet unclassified
dbContinue: node
  | processOop stack |
  stackNode := node.
  stack := node basicContents stack.
  processOop := stack process asOop.
  processResult := self topez topezClientForwarder dbContinue: processOop.
  stack resetFrames.
  ^ self dbFinishStep: stackNode