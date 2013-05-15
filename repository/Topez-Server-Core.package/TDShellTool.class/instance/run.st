as yet unclassified
run
  | doitContext displayPolicy |
  doitContext := objIn dotSelfObject.
  tokens size > 1
    ifTrue: [ 
      | doitString |
      doitString := (topez lookup: (tokens at: 2)) contents.
      ^ self topez evaluateString: doitString inContext: doitContext ].
  topez
    accumulateTextAndDo: [ :doitString :accumulateObjIn | 
      | result |
      topez exception: nil.
      result := self topez
        evaluateString: doitString
        inContext: accumulateObjIn dotSelfObject.
      self topez objIn: result.
      result ].
  displayPolicy := topez displayPolicy
    compacted: true;
    yourself.
  doitContext displayOn: displayPolicy.
  ^ TDCommandResult new
    displayText: displayPolicy stream contents;
    resultObject: doitContext;
    yourself