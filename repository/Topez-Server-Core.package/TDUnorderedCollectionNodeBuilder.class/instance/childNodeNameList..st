as yet unclassified
childNodeNameList: parentNode
  | specialElements collectionSize moreElements |
  specialElements := self specialChildNodeNameList: parentNode.
  collectionSize := self collectionElements size.
  moreElements := #().
  collectionSize > self indexableWindowSize
    ifTrue: [ 
      indexableEndIndex := self indexableStartIndex + self indexableWindowSize - 1
        min: collectionSize.
      indexableEndIndex < collectionSize
        ifTrue: [ moreElements := #('<<more>>') ] ]
    ifFalse: [ indexableEndIndex := collectionSize ].
  ^ specialElements
    ,
      ((self indexableStartIndex to: indexableEndIndex)
        collect: [ :each | each asString ])
    , moreElements