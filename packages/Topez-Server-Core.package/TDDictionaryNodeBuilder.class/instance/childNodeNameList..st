as yet unclassified
childNodeNameList: parentNode
  | specialElements |
  specialElements := parentNode topez displayOops
    ifTrue: [ #('(class)' '(oop)') ]
    ifFalse: [ #('(class)') ].
  ^ specialElements , (1 to: self associations size) collect: [ :each | each asString ]