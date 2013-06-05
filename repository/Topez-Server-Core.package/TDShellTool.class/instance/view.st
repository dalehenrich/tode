as yet unclassified
view
  "view aspect [ path ]"

  | contextObject aspect |
  contextObject := objIn.
  aspect := #'navigate'.
  tokens size > 1
    ifTrue: [ 
      aspect := (tokens at: 2) asSymbol.
      tokens size > 2
        ifTrue: [ contextObject := (topez lookup: (tokens at: 3)) dotSelfObject ] ].
  contextObject editUsing: (TDEditorSpec topez: topez editorAspect: aspect).
  ^ contextObject