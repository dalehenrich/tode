as yet unclassified
beditlist
  "bedit list <definitionList-path> <source-regex> <replacement-string>"

  ^ self
    beditList: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)