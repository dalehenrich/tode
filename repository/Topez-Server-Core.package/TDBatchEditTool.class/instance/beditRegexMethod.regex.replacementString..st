as yet unclassified
beditRegexMethod: selectorExpression regex: regex replacementString: replacementString
  | findTool definitions |
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findRegexMethod: selectorExpression.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString