as yet unclassified
beditsender
  "bedit sender <selector> <source-regex> <replacement-string>"

  ^ self
    beditSender: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)