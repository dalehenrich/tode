as yet unclassified
baseClassNamesList
  | classes |
  classMap := Dictionary new.
  classes := IdentitySet new.
  self definitions
    do: [ :def | 
      (classMap
        at: def theClassName
        ifAbsent: [ classMap at: def theClassName put: OrderedCollection new ])
        add: def.
      classes add: def theClassName ].
  ^ classes asArray