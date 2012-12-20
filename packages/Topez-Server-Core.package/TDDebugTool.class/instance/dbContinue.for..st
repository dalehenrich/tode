as yet unclassified
dbContinue: replacementObj for: stackPath
    | processOop stack |
    stack := (topez lookup: stackPath) basicContents stack.
    processOop := stack process asOop.
    processResult := self topez topezClientForwarder dbContinue: replacementObj asOop forProcessOop: processOop.
    ^ STON fromString: processResult