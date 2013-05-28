as yet unclassified
baseClassNamesList
  | classes |
  classMap := Dictionary new.
  classes := Array new.
  self object
    do: [ :def | 
      classMap at: def theClassName put: def.
      classes add: def theClassName ].
  ^ classes