as yet unclassified
man
  "man <command-name>
   man @<command-path>
  "

  ^ tokens size = 1
    ifFalse: [ 
      | node man command |
      command := tokens at: 2.
      node := (command beginsWith: '@')
        ifTrue: [ self resolveAtPathNodeReference: command ]
        ifFalse: [ topez commands at: (tokens at: 2) ].
      man := node manPage.
      man asText
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'edit')
            windowName: #'manPage';
            yourself).
      man ]