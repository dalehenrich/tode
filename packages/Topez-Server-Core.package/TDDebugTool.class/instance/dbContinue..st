as yet unclassified
dbContinue: node
  | processOop stack |
  stack := node basicContents stack.
  processOop := stack process asOop.
  processResult := self topez topezClientForwarder dbContinue: processOop.
  ^ STON fromString: processResult