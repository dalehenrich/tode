as yet unclassified
beditReferences: globalName regex: regex replacementString: replacementString windowLabel: aLabel
  | findTool definitions |
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findReferences: globalName.
  definitions isEmpty
    ifTrue: [ ^ false ].
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString
    windowLabel: aLabel