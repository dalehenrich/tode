evaluation
processCommand: aCommandString
  (self cliShell evaluate: aCommandString)
    ifNotNil: [ :outputStringOrText | 
      | str |
      (str := outputStringOrText) isEmpty
        ifTrue: [ self restoreSelectionMarker ]
        ifFalse: [ 
          self 
            show: outputStringOrText;
            cr ] ].
  self prompt