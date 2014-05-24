cls
clsrename
  "
  cls rename ( ( <class-name> | @<class-path> ) <new-class-name> )...
"

  | classes |
  self getSubcommandOptsMixedLongShort: {}.
  classes := Set new.
  1 to: subArguments size by: 2 do: [ :index | 
    | clsRef oldClass newName newClass comment |
    clsRef := subArguments at: index.
    oldClass := self resolveClassReference: clsRef.
    newName := subArguments at: index + 1.
    newClass := self clsrename: oldClass to: newName.
    classes add: newClass ].
  ^ classes