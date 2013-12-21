as yet unclassified
specialChildNodeNameList: parentNode
  | specialList |
  specialList := parentNode topez displayOops
    ifTrue: [ #('(class)' '(oop)') ]
    ifFalse: [ #('(class)') ].
  parentNode basicContents isInvariant
    ifTrue: [ specialList := specialList , #('(invariant)') ].
  (DependencyList for: parentNode basicContents)
    ifNotNil: [ specialList := specialList , #('(dependents)') ].
  ^ specialList