as yet unclassified
getBlock
  ^ [ 
  | cl selector |
  self inClass == nil
    ifTrue: [ self homeMethodSource ]
    ifFalse: [ 
      cl := Smalltalk at self inClass theNonMetaClass name asSymbol.
      self inClass isMeta
        ifTrue: [ cl := cl class ].
      selector := self selector.
      cl sourceCodeAt: selector ] ]