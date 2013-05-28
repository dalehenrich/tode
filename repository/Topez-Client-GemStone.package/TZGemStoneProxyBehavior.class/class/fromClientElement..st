as yet unclassified
fromClientElement: aTodeClientElement
  ^ self new
    behaviorOop: aTodeClientElement inClassOop;
    allClassVarNames: aTodeClientElement allClassVarNames;
    allInstVarNames: aTodeClientElement allInstVarNames;
    allSharedPoolNames: aTodeClientElement allSharedPoolNames;
    topez: aTodeClientElement topez;
    yourself