as yet unclassified
view
  "view [ path ]"

  | contextObject |
  contextObject := objIn.
  tokens size > 1
    ifTrue: [ contextObject := topez lookup: (tokens at: 2) ].
  ^ contextObject edit: topez aspect: #'view' windowId: windowId