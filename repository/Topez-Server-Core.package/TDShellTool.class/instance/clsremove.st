cls
clsremove
  "
  cls remove ( <class-name> | @<class-path> )...
"

  | classes |
  self getSubcommandOptsMixedLongShort: {}.
  classes := Set new.
  subArguments
    do: [ :clsRef | 
      | theClass comment |
      theClass := self resolveClassReference: clsRef.
      classes add: theClass.
      self clsremove: theClass ].
  ^ classes