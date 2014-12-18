accessing
tabCompletion: commandLine
  | tokens token newLine matches |
  tokens := commandLine findTokens: ' '.
  tokens isEmpty
    ifTrue: [ ^ (self findMatchingCommandFor: '') asArray sorted: [ :a :b | a <= b ] ].
  token := tokens last.
  matches := (tokens size > 1
    or: [ commandLine last isSeparator or: [ token first = $. or: [ token first = $/ ] ] ])
    ifTrue: [ 
      commandLine last isSeparator
        ifTrue: [ token := '' ].
      self findMatchingPathFor: token ]
    ifFalse: [ self findMatchingCommandFor: token ].
  ^ matches asArray sorted: [ :a :b | a <= b ]