as yet unclassified
clientSourceElement
  ^ super clientSourceElement
    inClassOop: self inClassOop;
    sourceRange: self sourceRange;
    allInstVarNames: self allInstVarNames;
    allClassVarNames: self allClassVarNames;
    allSharedPoolNames: self allSharedPoolNames;
    yourself