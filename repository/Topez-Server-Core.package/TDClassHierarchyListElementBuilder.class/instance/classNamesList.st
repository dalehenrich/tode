as yet unclassified
classNamesList
  | classes |
  classes := Set new.
  self baseClassNamesList
    do: [ :className | 
      | cl |
      cl := Smalltalk classNamed: className.
      classes addAll: (cl allSuperclasses collect: [ :each | each name ]).
      classes add: cl name.
      classes addAll: (cl allSubclasses collect: [ :each | each name ]) ].
  ^ classes