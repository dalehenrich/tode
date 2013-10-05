as yet unclassified
specialChildNodeNameList: parentNode
  ^ parentNode topez displayOops
    ifTrue: [ #('(class)' '(oop)') ]
    ifFalse: [ #('(class)') ]