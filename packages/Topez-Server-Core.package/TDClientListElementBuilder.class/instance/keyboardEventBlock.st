as yet unclassified
keyboardEventBlock
  ^ [ :modifierPressed :codePoint :listElement :selectionIndex | 
  | block |
  block := self codePointMap
    at: codePoint
    ifAbsent: [ 
      "just return false"
      [ :x :y :z | false ] ].
  block value: modifierPressed value: listElement value: selectionIndex ]