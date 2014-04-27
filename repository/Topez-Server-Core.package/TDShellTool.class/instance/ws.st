as yet unclassified
ws
  "
  ws [--help] [@<object-path>]
"

  | contextObject |
  contextObject := objIn.
  ''
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'workspace')
        windowLabel: 'Workspace on ' , contextObject printString)
    objectBlock: [ contextObject ].
  ^ contextObject