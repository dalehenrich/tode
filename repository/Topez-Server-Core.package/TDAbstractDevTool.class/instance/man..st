as yet unclassified
man: command
  | node man |
  node := (command beginsWith: '@')
    ifTrue: [ self resolveAtPathNodeReference: command ]
    ifFalse: [ topez commands at: command ].
  man := node manPage.
  man asText
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'manPage';
        yourself).
  ^ man