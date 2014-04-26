as yet unclassified
beditreferences
  "bedit references <globalNameOrPathRef> <source-regex> <replacement-string>"

  ^ self
    beditReferences: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)