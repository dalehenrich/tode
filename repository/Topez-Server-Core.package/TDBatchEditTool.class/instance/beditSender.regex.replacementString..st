as yet unclassified
beditSender: selectorExpression regex: regex replacementString: replacementString
  | findTool definitions |
  findTool := self topez toolInstanceFor: 'find'.
  definitions := findTool findSender: selectorExpression.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString