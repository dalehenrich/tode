commands
ws
  "
  ws [--help] [<object-path>]
"

  | contextObject |
  contextObject := arguments isEmpty
    ifTrue: [ objIn ]
    ifFalse: [ (topez lookup: (arguments at: 1)) dotSelfObject ].
  ''
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , contextObject printString)
    objectBlock: [ contextObject ].
  ^ contextObject