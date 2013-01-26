as yet unclassified
elementSource: methodSource clientSourceElement: clientSourceElement
  | beh selector category ans |
  self inClass == nil
    ifTrue: [ self error: 'Cannot edit Executable Code' ].
  beh := Smalltalk at: self inClass theNonMetaClass name asSymbol.
  self inClass isMeta
    ifTrue: [ beh := beh class ].
  selector := self object selector.
  category := beh categoryOfSelector: selector asSymbol.
  ans := beh compile: methodSource classified: category.
  clientSourceElement topez commitTransaction.
  ^ ans