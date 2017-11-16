as yet unclassified
clientSourceElement
  | ico |
  ico := self inClassOop.
  ico = 20
    ifTrue: [ ico := nil ].
  ^ super clientSourceElement
    inClassOop: ico;
    sourceRange: self sourceRange;
    allInstVarNames: self allInstVarNames;
    allClassVarNames: self allClassVarNames;
    allSharedPoolNames: self allSharedPoolNames;
    yourself