as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | entry |
  entry := self object profMonResults at: index.
  entry parentEntry: nil.
  entry
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'profMonResults').
  ^ nil