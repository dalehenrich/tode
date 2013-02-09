as yet unclassified
keyboardEventBlock
  ^ [ :modifierPressed :codePoint :listElement :selectionIndex | 
  | block result |
  "block result may be a Symbol or a Boolean:
		if Symbol, the client-side editor will perform: the Symbol
		if Array, the client-side editor will perform: (array at: 1) with: (array at: 2)
		if false, the event was not handled
		if true, the event was handled"
  block := self codePointMap
    at: codePoint
    ifAbsent: [ 
      "just return false"
      [ :x :y :z | false ] ].
  result := block
    value: modifierPressed
    value: listElement
    value: selectionIndex.
  result
    ifTrue: [ listElement topez commitTransaction ].
  result ]