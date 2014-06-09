cls
clsrename
  "
  cls rename ( ( <class-name> | @<class-path> ) <new-class-name> )...
"

  | classes beditTool |
  self getSubcommandOptsMixedLongShort: {}.
  classes := Set new.
  beditTool := self topez toolInstanceFor: 'bedit'.
  1 to: subArguments size by: 2 do: [ :index | 
    | clsRef oldClass oldName newName newClass comment |
    clsRef := subArguments at: index.
    oldClass := self resolveClassReference: clsRef.
    oldName := oldClass name asString.
    newName := subArguments at: index + 1.
    beditTool beditReferences: oldName regex: oldName replacementString: newName.
    newClass := self clsrename: oldClass to: newName.
    classes add: newClass ].
  ^ classes