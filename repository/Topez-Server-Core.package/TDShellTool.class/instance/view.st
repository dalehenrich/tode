as yet unclassified
view
  "view aspect [ path ]"

  | contextObject aspect |
  contextObject := objIn.
  aspect := #'browse'.
  tokens size > 1
    ifTrue: [ 
      aspect := (tokens at: 2) asSymbol.
      tokens size > 2
        ifTrue: [ contextObject := topez lookup: (tokens at: 3) ] ].
  contextObject edit: topez aspect: aspect windowId: windowId.
  ^ contextObject