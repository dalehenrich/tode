as yet unclassified
beditMethod: selector regex: regex replacementString: replacementString
  | findTool definitions |
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findMethod: selector.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString