as yet unclassified
childNodeNameList: parentNode
  | specialElements |
  specialElements := parentNode topez displayOops
    ifTrue: [ #('(class)' '(oop)' '(committed)' '(notTranlogged)') ]
    ifFalse: [ #('(class)' '(committed)' '(notTranlogged)') ].
  ^ specialElements , (1 to: self keys size) collect: [ :each | each asString ]