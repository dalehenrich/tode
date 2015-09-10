as yet unclassified
addToClientListFor: clsDef names: nameList items: items indents: indents aspect: aspect
  | space attributes |
  space := ''.
  (indents at: clsDef) timesRepeat: [ space := space , ' ' ].
  attributes := {(TextEmphasis italic)}.
  clsDef theClass ifNil: [ attributes add: TextEmphasis underlined ].
  nameList add: (Text string: space , clsDef label attributes: attributes).
  items
    add: (TDClientListItemAttributes object: self parent: nil aspect: aspect)