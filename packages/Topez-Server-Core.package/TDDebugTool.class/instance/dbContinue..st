as yet unclassified
dbContinue: stackPath
  | processOop stack |
  stack := (topez lookup: stackPath) basicContents stack.
  processOop := stack process asOop.
  processResult := self topez topezClientForwarder dbContinue: processOop.
  ^ STON fromString: processResult