as yet unclassified
addToClientListFor: cl names: nameList items: items indents: indents aspect: aspect
  | space |
  space := ''.
  (indents at: cl) timesRepeat: [ space := space , ' ' ].
  nameList add: (Text string: space , cl name asString attribute: TextEmphasis bold).
  items add: (TDClientListItemAttributes object: self parent: nil aspect: aspect)