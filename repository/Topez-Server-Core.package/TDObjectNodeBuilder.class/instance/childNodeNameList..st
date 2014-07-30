as yet unclassified
childNodeNameList: parentNode
  | parentObj coll specialElements ivs dvs indexableSize moreElements |
  parentObj := parentNode basicContents.
  ivs := parentObj class allInstVarNames.
  dvs := (parentObj respondsTo: #'dynamicInstanceVariables')
    ifTrue: [ parentObj dynamicInstanceVariables ]
    ifFalse: [ #() ].
  moreElements := #().
  indexableSize := Reflection sizeOf: parentObj.
  indexableSize > self indexableWindowSize
    ifTrue: [ 
      indexableEndIndex := self indexableStartIndex + self indexableWindowSize - 1
        min: indexableSize.
      indexableEndIndex < indexableSize
        ifTrue: [ moreElements := #('<<more>>') ] ]
    ifFalse: [ indexableEndIndex := indexableSize - ivs size ].
  specialElements := self specialChildNodeNameList: parentNode.
  coll := (ivs , dvs) sorted collect: [ :each | each asString ].
  ^ specialElements , coll
    ,
      ((self indexableStartIndex to: indexableEndIndex)
        collect: [ :each | each asString ])
    , moreElements