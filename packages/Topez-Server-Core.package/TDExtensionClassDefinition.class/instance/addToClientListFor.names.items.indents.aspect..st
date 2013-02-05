as yet unclassified
addToClientListFor: cl names: nameList items: items indents: indents aspect: aspect
  | space |
  space := ''.
  (indents at: cl) timesRepeat: [ space := space , ' ' ].
  nameList add: (Text string: space , cl name asString attribute: TextEmphasis italic).
  items add: (TDClientListItemAttributes object: cl name parent: nil aspect: aspect)