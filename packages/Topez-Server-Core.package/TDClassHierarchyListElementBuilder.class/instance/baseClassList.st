as yet unclassified
baseClassList
  | baseClass classes |
  baseClass := self object isBehavior
    ifTrue: [ self object theNonMetaClass ]
    ifFalse: [ self object class theNonMetaClass ].
  classes := Set new.
  {baseClass}
    do: [ :cl | 
      classes addAll: cl allSuperclasses.
      classes add: cl.
      classes addAll: cl allSubclasses ].
  ^ classes