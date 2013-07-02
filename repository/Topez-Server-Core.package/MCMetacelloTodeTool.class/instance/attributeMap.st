as yet unclassified
attributeMap
  | dict |
  dict := Dictionary new.
  self orderedAttributeList
    do: [ :attribute | dict at: attribute put: attribute ].
  ^ dict