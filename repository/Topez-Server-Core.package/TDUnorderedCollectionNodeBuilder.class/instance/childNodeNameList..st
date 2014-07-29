as yet unclassified
childNodeNameList: parentNode
  | specialElements collectionSize |
  specialElements := self specialChildNodeNameList: parentNode.
  collectionSize := self collectionElements size.
  collectionSize > self indexableWindowSize
    ifTrue: [ 
      indexableEndIndex := self indexableStartIndex + self indexableWindowSize
        min: collectionSize ]
    ifFalse: [ indexableEndIndex := collectionSize ].
  ^ specialElements , (self indexableStartIndex to: indexableEndIndex)
    collect: [ :each | each asString ]