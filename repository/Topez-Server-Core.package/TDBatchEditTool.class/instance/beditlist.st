as yet unclassified
beditlist
  "bedit list <definitionList-path> <source-regex> <replacement-string>"

  | definitions regex replacementString |
  definitions := self resolveAtPathReference: (tokens at: 2).
  regex := tokens at: 3.
  replacementString := tokens at: 4.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString