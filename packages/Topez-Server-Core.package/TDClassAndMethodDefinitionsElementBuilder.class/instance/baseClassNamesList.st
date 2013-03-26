as yet unclassified
baseClassNamesList
  | classes |
  classMap := Dictionary new.
  classes := Array new.
  self object
    do: [ :def | 
      classMap at: def className put: def.
      classes add: def className ].
  ^ classes