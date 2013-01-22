as yet unclassified
elementSource: methodSource
  | beh selector category |
  self inClass == nil
    ifTrue: [ self error: 'Cannot edit Executable Code' ].
  beh := Smalltalk at: self inClass theNonMetaClass name asSymbol.
  self inClass isMeta
    ifTrue: [ beh := beh class ].
  selector := self object selector.
  category := beh categoryOfSelector: selector asSymbol.
  ^ beh compile: methodSource classified: category