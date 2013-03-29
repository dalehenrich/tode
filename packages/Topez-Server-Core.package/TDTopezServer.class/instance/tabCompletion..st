accessing
tabCompletion: commandLine
  | tokens token newToken newLine |
  tokens := commandLine findTokens: ' '.
  tokens isEmpty
    ifTrue: [ ^ commandLine ].
  token := tokens last.
  newToken := tokens size > 1
    ifTrue: [ self findMatchingPathFor: token ]
    ifFalse: [ self findMatchingCommandFor: token ].
  newToken = token
    ifTrue: [ ^ commandLine ].
  newLine := WriteStream on: String new.
  1 to: tokens size - 1 do: [ :index | 
    newLine
      nextPutAll: (token at: index);
      space ].
  newLine nextPutAll: newToken.
  ^ newLine contents