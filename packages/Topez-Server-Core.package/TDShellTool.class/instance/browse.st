as yet unclassified
browse
  "browse [ path ]"

  | contextObject |
  contextObject := objIn.
  tokens size > 1
    ifTrue: [ contextObject := topez lookup: (tokens at: 2) ].
  ^ contextObject edit: topez aspect: #'browse' windowId: windowId