as yet unclassified
setBlock
  ^ [ :methodSource | 
  | beh selector category |
  self inClass == nil
    ifTrue: [ self homeMethodSource ]
    ifFalse: [ 
      beh := Smalltalk at: self inClass theNonMetaClass name asSymbol.
      self inClass isMeta
        ifTrue: [ beh := beh class ].
      selector := self selector.
      category := beh categoryOfSelector: selector asSymbol.
      beh compile: methodSource classified: category ] ]