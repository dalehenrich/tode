as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | entry |
  index ifNil: [ ^ nil ].
  index <= self headerSize
    ifTrue: [ ^ nil ].
  entry := self object clientList at: index - self headerSize.
  entry parentEntry: nil.
  entry
    editUsing:
      (TDEditorSpec topez: listElement topez editorAspect: #'profMonResults').
  ^ nil