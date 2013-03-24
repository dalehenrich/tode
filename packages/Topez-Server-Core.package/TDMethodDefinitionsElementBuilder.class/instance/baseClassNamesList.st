as yet unclassified
baseClassNamesList
  | classes |
  classMap := Dictionary new.
  classes := IdentitySet new.
  self object
    do: [ :def | 
      (classMap
        at: def className
        ifAbsent: [ classMap at: def className put: Array new ]) add: def.
      classes add: def className ].
  ^ classes asArray