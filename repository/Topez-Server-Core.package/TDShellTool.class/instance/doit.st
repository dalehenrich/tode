as yet unclassified
doit
  "doit"

  | doitContext contextNode displayPolicy |
  contextNode := self topez currentNode.
  tokens size > 1
    ifTrue: [ contextNode := topez lookup: (tokens at: 2) ].
  doitContext := contextNode dotSelfObject.
  topez
    accumulateTextAndDo: [ :doitString :accumulateObjIn | 
      | result |
      topez exception: nil.
      result := self topez
        evaluateString: doitString
        inContext: doitContext
        withTempSymbolList: contextNode tempSymbolList.
      self topez objIn: result.
      result ].
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  doitContext displayOnPolicy: displayPolicy.
  ^ TDCommandResult new
    displayText: displayPolicy stream contents;
    resultObject: doitContext;
    yourself