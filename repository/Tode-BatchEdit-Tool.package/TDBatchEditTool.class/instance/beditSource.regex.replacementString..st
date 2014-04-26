as yet unclassified
beditSource: sourceExpression regex: regex replacementString: replacementString
  | findTool definitions |
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findSource: sourceExpression.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString