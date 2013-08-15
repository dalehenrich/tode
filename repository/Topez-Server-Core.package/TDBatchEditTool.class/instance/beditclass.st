as yet unclassified
beditclass
  "bedit class <className> <source-regex> <replacement-string>"

  ^ self
    beditClass: (tokens at: 2) asSymbol
    isMeta: true
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)