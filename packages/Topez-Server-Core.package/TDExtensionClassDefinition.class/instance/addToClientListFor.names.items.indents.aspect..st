as yet unclassified
addToClientListFor: clsName names: nameList items: items indents: indents aspect: aspect
  | space meths |
  space := ''.
  (indents at: clsName) timesRepeat: [ space := space , ' ' ].
  nameList
    add: (Text string: space , clsName asString attribute: TextEmphasis italic).
  items
    add: (TDClientListItemAttributes object: self parent: nil aspect: aspect).
  space := space , '  '.
  meths := self instanceMethods sort: [ :a :b | a selector <= b selector ].
  meths
    do: [ :def | 
      nameList add: (Text string: space , def label attribute: TextEmphasis italic).
      items
        add: (TDClientListItemAttributes object: def parent: nil aspect: aspect) ].
  meths := self classMethods sort: [ :a :b | a selector <= b selector ].
  meths
    do: [ :def | 
      nameList add: (Text string: space , def label attribute: TextEmphasis italic).
      items
        add: (TDClientListItemAttributes object: def parent: nil aspect: aspect) ]