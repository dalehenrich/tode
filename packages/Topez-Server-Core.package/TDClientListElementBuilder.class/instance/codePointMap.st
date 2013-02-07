as yet unclassified
codePointMap
  "
[]	CMD-B - browse class hierarchy
[]	CMD-C - spawn window
[]	CMD-L - list windows
[]	CMD-E - browse pkg/config classes/methods
	CMD-N - find references
[]	CMD-b - browse class
[]	CMD-c - copy object
[]	CMD-l - refresh
[]	CMD-m - browse implementors
[]	CMD-n - browse senders
[]	CMD-N - references to
	CMD-o - open method template
	CMD-p - open print window
[]	CMD-v - paste object
[]	CMD-x - cut object
"

  "block result may be a Symbol or a Boolean:
		if Symbol, the client-side editor will perform: the Symbol
		if Array, the client-side editor will perform: (array at: 1) with: (array at: 2)
		if false, the event was not handled
		if true, the event was handled"

  | map |
  map := Dictionary new.
  map
    at: $B codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $C codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $E codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftEAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $L codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftLAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $N codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdShiftNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $b codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdBAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $c codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdCAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $l codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $m codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdMAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $n codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdNAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $o codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdOAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $v codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdVAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    at: $x codePoint
      put: [ :modifierPressed :listElement :selectionIndex | self cmdXAction: listElement modifierPressed: modifierPressed selectionIndex: selectionIndex ];
    yourself.
  ^ map