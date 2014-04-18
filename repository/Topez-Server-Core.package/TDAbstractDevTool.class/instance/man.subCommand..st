as yet unclassified
man: command subCommand: subCmd
  | node man |
  node := (command beginsWith: '@')
    ifTrue: [ self resolveAtPathNodeReference: command ]
    ifFalse: [ topez commands at: command ].
  man := node manPage.
  man := man subCommands at: subCmd.
  man asText
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'manPage';
        yourself).
  ^ man