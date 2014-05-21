testing
hasSameSource
  ^ self editOp = 'M' and: [ self remote trimBoth = self local trimBoth ]