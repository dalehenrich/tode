as yet unclassified
beditinstance
  "bedit instance <className> <source-regex> <replacement-string>"

  ^ self
    beditClass: (tokens at: 2) asSymbol
    isMeta: false
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)