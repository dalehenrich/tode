as yet unclassified
childNodeNameList: parentNode
  | specialElements |
  specialElements := parentNode topez displayOops
    ifTrue: [ self basicChildNameListDisplayOops ]
    ifFalse: [ self basicChildNameList ].
  ^ specialElements , (1 to: self associations size)
    collect: [ :each | each asString ]