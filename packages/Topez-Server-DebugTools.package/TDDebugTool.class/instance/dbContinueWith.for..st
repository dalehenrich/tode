as yet unclassified
dbContinueWith: replacementObj for: node
  | processOop stack |
  stack := node basicContents stack.
  processOop := stack process asOop.
  processResult := self topez topezClientForwarder dbContinue: replacementObj asOop forProcessOop: processOop.
  ^ STON fromString: processResult