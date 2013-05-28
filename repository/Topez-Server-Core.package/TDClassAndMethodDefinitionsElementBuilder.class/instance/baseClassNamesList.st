as yet unclassified
baseClassNamesList
  | classes |
  classMap := Dictionary new.
  classes := OrderedCollection new.
  self object
    do: [ :def | 
      classMap at: def theClassName put: def.
      classes add: def theClassName ].
  ^ classes