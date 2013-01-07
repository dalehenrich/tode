as yet unclassified
clientSourceElement
  ^ TodeClientMethodElement new
    clientElementOop;
    aspect: #'edit';
    allClassVarNames: self allClassVarNames;
    allInstVarNames: self allInstVarNames;
    allSharedPoolNames: self allSharedPoolNames;
    getBlock: [ self homeMethodSource ];
    setBlock: [ :methodSource | 
          | beh selector category |
          self inClass == nil
            ifTrue: [ self error: 'Cannot edit Executable Code' ]
            ifFalse: [ 
              beh := Smalltalk at: self inClass theNonMetaClass name asSymbol.
              self inClass isMeta
                ifTrue: [ beh := beh class ].
              selector := self selector.
              category := beh categoryOfSelector: selector asSymbol.
              beh compile: methodSource classified: category ] ];
    inClass: self inClass;
    sourceRange:
        {(self selectionRange begin).
          (self selectionRange end)};
    formatOnDisplay: false;
    yourself