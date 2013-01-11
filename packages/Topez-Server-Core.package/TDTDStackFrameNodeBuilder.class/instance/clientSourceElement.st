as yet unclassified
clientSourceElement
  ^ TodeClientMethodElement new
    clientElementOop;
    aspect: #'edit';
    allClassVarNames: self object allClassVarNames;
    allInstVarNames: self object allInstVarNames;
    allSharedPoolNames: self object allSharedPoolNames;
    firstSource: self object homeMethodSource;
    getBlock: [ self object homeMethodSource ];
    setBlock: [ :methodSource | 
          | beh selector category |
          self object inClass == nil
            ifTrue: [ self error: 'Cannot edit Executable Code' ]
            ifFalse: [ 
              beh := Smalltalk at: self object inClass theNonMetaClass name asSymbol.
              self object inClass isMeta
                ifTrue: [ beh := beh class ].
              selector := self object selector.
              category := beh categoryOfSelector: selector asSymbol.
              beh compile: methodSource classified: category ] ];
    inClass: self object inClass;
    sourceRange:
        {(self object selectionRange begin).
          (self object selectionRange end)};
    formatOnDisplay: false;
    yourself