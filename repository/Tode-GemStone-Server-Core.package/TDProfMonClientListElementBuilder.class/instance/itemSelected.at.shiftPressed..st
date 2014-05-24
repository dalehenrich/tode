as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | entry |
  index ifNil: [ ^ nil ].
  index <= 3
    ifTrue: [ ^ nil ].
  entry := self object profMonResults at: index - 3.
  entry parentEntry: nil.
  entry
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'profMonResults').
  ^ nil