as yet unclassified
beditmethod
  "bedit method <selector> <source-regex> <replacement-string>"

  ^ self
    beditMethod: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)