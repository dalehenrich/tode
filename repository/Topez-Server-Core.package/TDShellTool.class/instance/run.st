as yet unclassified
run
  "run [ <receiver-path> ]"

  | doitContext displayPolicy |
  doitContext := objIn.
  tokens size > 1
    ifTrue: [ doitContext := topez lookup: (tokens at: 2) ].
  topez
    accumulateTextAndDo: [ :doitString :accumulateObjIn | 
      | result |
      topez exception: nil.
      result := self topez
        evaluateString: doitString
        inContext: doitContext
        withTempSymbolList: topez currentNode tempSymbolList.
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