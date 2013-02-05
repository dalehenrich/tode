as yet unclassified
classList
  | classes |
  classes := Set new.
  self baseClassList
    do: [ :cl | 
      classes addAll: cl allSuperclasses.
      classes add: cl.
      classes addAll: cl allSubclasses ].
  ^ classes