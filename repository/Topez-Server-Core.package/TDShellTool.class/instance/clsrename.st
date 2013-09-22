as yet unclassified
clsrename
  "
  cls rename <old-name> <new-name>
      rename @<class-path> <new-name>
"

  | oldName newName beditTool |
  oldName := tokens at: 2.
  (oldName beginsWith: '@')
    ifTrue: [ 
      | oldClass |
      oldClass := self resolveAtPathReference: oldName.
      oldName := oldClass name asString ].
  newName := tokens at: 3.
  beditTool := self topez toolInstanceFor: 'bedit'.
  beditTool beditReferences: oldName regex: oldName replacementString: newName.
  ^ self clsrename: oldName to: newName