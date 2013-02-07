as yet unclassified
baseClassList
  | classes |
  classMap := Dictionary new.
  classes := IdentitySet new.
  self object
    do: [ :def | 
      (classMap at: def className ifAbsent: [ classMap at: def className put: Array new ]) add: def.
      classes add: (Smalltalk classNamed: def className) ].
  ^ classes asArray