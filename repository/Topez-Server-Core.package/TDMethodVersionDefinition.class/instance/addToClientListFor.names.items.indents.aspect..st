as yet unclassified
addToClientListFor: clsName names: nameList items: items indents: indents aspect: aspect
  | space |
  space := ''.
  (indents at: clsName) timesRepeat: [ space := space , ' ' ].
  nameList add: (Text string: space , self label attribute: TextEmphasis bold).
  items
    add: (TDClientListItemAttributes object: self parent: nil aspect: aspect)