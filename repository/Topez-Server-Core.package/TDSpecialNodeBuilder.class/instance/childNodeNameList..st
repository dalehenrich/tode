as yet unclassified
childNodeNameList: parentNode
  | list |
  list := (parentNode topez displayOops
    or: [ parentNode basicContents isSpecial ])
    ifTrue: [ #('(class)' '(oop)' '(value)') ]
    ifFalse: [ #('(class)' '(value)') ].
  parentNode basicContents isSpecial
    ifFalse: [ list := list , #('(committed)' '(dependents)') ].
  ^ list