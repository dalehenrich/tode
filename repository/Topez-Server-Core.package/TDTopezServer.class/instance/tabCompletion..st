accessing
tabCompletion: commandLine
  | tokens token newLine matches |
  tokens := commandLine findTokens: ' '.
  tokens isEmpty
    ifTrue: [ ^ commandLine ].
  token := tokens last.
  matches := tokens size > 1
    ifTrue: [ self findMatchingPathFor: token ]
    ifFalse: [ self findMatchingCommandFor: token ].
  matches isEmpty
    ifTrue: [ ^ #() ].
  ^ matches asArray