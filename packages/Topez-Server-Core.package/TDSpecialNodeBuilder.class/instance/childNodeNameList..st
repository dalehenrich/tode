as yet unclassified
childNodeNameList: parentNode
  ^ (parentNode topez displayOops or: [ parentNode basicContents isSpecial ])
    ifTrue: [ #('(class)' '(oop)' '(value)') ]
    ifFalse: [ #('(class)' '(value)') ]