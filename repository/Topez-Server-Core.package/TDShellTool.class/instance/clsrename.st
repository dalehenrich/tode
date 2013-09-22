as yet unclassified
clsrename
  "
  cls rename <old-name> <new-name>
      rename @<class-path> <new-name>
"

  | clsName theClass newName beditTool |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  newName := tokens at: 3.
  beditTool := self topez toolInstanceFor: 'bedit'.
  beditTool beditReferences: clsName regex: clsName replacementString: newName.
  ^ self clsrename: theClass to: newName