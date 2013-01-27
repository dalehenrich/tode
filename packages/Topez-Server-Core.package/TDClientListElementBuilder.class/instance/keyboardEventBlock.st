as yet unclassified
keyboardEventBlock
  ^ [ :modifierPressed :codePoint :listElement :selectionIndex | 
  | block |
  "block result may be a Symbol or a Boolean:
		if Symbol, the client-side editor will perform: the Symbol
		if false, the event was not handled
		if true, the event was handled"
  block := self codePointMap
    at: codePoint
    ifAbsent: [ 
      "just return false"
      [ :x :y :z | false ] ].
  block value: modifierPressed value: listElement value: selectionIndex ]