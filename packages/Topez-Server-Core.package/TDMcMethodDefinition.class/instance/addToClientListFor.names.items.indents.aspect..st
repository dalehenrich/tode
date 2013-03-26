as yet unclassified
addToClientListFor: clsName names: nameList items: items indents: indents aspect: aspect
  | space attributes |
  space := ''.
  (indents at: clsName) timesRepeat: [ space := space , ' ' ].
  attributes := {(TextEmphasis italic)}.
  Smalltalk at: clsName ifAbsent: [ attributes add: TextEmphasis underlined ].
  nameList add: (Text string: space , self label attributes: attributes).
  items
    add: (TDClientListItemAttributes object: self parent: nil aspect: aspect)