as yet unclassified
beditrsender
  "bedit rsender <regex-pattern> <source-regex> <replacement-string>"

  ^ self
    beditRegexSender: (tokens at: 2)
    regex: (tokens at: 3)
    replacementString: (tokens at: 4)