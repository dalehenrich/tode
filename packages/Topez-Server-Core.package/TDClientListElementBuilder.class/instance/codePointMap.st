as yet unclassified
codePointMap
  "
	CMD-B - browse/edit (#browse)
[]	CMD-C - spawn window
	CMD-I - inspect (#inspect)
[]	CMD-L - list windows
	CMD-N - find references
	CMD-V - view (#view)
[]	CMD-b - browse CLASS
	CMD-c - copy selection
[]	CMD-l - refresh
	CMD-p - open print window
	CMD-v - paste selection
	CMD-x - cut selection
"

  "block result may be a Symbol or a Boolean:
		if Symbol, the client-side editor will perform: the Symbol
		if Array, the client-side editor will perform: (array at: 1) with: (array at: 2)
		if false, the event was not handled
		if true, the event was handled"

  | map |
  map := Dictionary new.
  map
    at: $C codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $L codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftLAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $b codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $l codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdLAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    yourself.
  ^ map