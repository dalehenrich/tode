as yet unclassified
clientSourceElement
  ^ super clientSourceElement
    inClass: self inClass;
    sourceRange: self sourceRange;
    allInstVarNames: self allInstVarNames;
    allClassVarNames: self allClassVarNames;
    allSharedPoolNames: self allSharedPoolNames;
    yourself