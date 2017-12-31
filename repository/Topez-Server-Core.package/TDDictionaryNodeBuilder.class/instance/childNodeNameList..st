as yet unclassified
childNodeNameList: parentNode
  | specialElements associationsSize moreElements |
  specialElements := parentNode topez displayOops
    ifTrue: [ self basicChildNameListDisplayOops ]
    ifFalse: [ self basicChildNameList ].
  associationsSize := self associations size.
  moreElements := #().
  associationsSize > self indexableWindowSize
    ifTrue: [ 
      indexableEndIndex := self indexableStartIndex + self indexableWindowSize - 1
        min: associationsSize.
      indexableEndIndex < associationsSize
        ifTrue: [ moreElements := #('<<more>>') ] ]
    ifFalse: [ indexableEndIndex := associationsSize ].
  ^ specialElements
    ,
      ((self indexableStartIndex to: indexableEndIndex)
        collect: [ :each | each asString ])
    , moreElements