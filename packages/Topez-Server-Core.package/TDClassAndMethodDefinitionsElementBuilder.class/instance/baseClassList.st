as yet unclassified
baseClassList
  | classes |
  classMap := Dictionary new.
  classes := Array new.
  self object
    do: [ :def | 
      classMap at: def className put: def.
      classes add: (Smalltalk classNamed: def className) ].
  ^ classes