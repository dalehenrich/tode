as yet unclassified
renameclass
  "rename class <old-name> <new-name>"

  | oldName newName beditTool |
  oldName := tokens at: 2.
  newName := tokens at: 3.
  beditTool := self topez toolinstanceFor: 'bedit'.
  beditTool beditReferences: oldName regex: oldName replacementString: newName.
  ^ self renameclass: oldName to: newName