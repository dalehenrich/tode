testing
hasSameSource
  ^ self editOp = 'M' and: [ self source trimBoth = self destination trimBoth ]