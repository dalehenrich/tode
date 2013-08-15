as yet unclassified
beditsource
  "bedit source <regex-pattern> <source-regex> <replacement-string>"

  ^ self
    beditSource: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)