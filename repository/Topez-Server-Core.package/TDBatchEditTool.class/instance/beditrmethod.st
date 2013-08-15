as yet unclassified
beditrmethod
  "bedit rmethod <regex-pattern> <source-regex> <replacement-string>"

  ^ self
    beditRegexMethod: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)