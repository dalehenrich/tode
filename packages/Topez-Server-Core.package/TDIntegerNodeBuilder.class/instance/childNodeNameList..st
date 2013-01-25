as yet unclassified
childNodeNameList: parentNode
  ^ (parentNode topez displayOops or: [ parentNode basicContents isLarge not ])
    ifTrue: [ #('(class)' '(oop)' '(hex)' '(value)') ]
    ifFalse: [ #('(class)' '(hex)' '(value)') ]