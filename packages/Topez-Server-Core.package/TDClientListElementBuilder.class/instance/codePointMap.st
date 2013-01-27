as yet unclassified
codePointMap
  "
	CMD-B - browse (full) class - hiearchy, definition, selectors
	CMD-C - spawn window
	CMD-L - list windows
	CMD-N - find references
	CMD-b - browse class - globals
	CMD-c - copy selection
	CMD-l - refresh
	CMD-p - open print window
	CMD-v - paste selection
	CMD-x - cut selection
"

  | map |
  map := Dictionary new.
  map
    at: $C codePoint put: [ :modifierPressed :listElement :selectionIndex |  ];
    yourself.
  ^ map