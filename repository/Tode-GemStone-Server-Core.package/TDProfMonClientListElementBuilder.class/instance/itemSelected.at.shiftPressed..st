as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | entry |
  index ifNil: [ ^ nil ].
  index <= self headerSize
    ifTrue: [ ^ nil ].
  entry := clientList at: index - self headerSize.
  entry parentEntry: nil.
  entry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'profMonResults')
        windowLabel: entry windowLabel;
        yourself).
  ^ nil