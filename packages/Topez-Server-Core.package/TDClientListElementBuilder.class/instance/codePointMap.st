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

  "block result may be a Symbol or a Boolean:
		if Symbol, the client-side editor will perform: the Symbol
		if Array, the client-side editor will perform: (array at: 1) with: (array at: 2)
		if false, the event was not handled
		if true, the event was handled"

  | map |
  map := Dictionary new.
  map
    at: $C codePoint
      put: [ :modifierPressed :listElement :selectionIndex | 
          "CMD-C - spawn window"
          STON
            toString:
              {#'spawnWindow:'.
              (listElement copyForSpawn)} ];
    at: $L codePoint
      put: [ :modifierPressed :listElement :selectionIndex | 
          "CMD-L - list windows"
          #'listWindows' ];
    at: $l codePoint
      put: [ :modifierPressed :listElement :selectionIndex | 
          "CMD-l - refresh"
          #'refreshList' ];
    yourself.
  ^ map