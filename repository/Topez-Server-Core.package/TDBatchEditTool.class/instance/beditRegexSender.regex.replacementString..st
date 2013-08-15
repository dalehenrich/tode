as yet unclassified
beditRegexSender: selectorExpression regex: regex replacementString: replacementString
  | findTool definitions |
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findRegexSender: selectorExpression.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString