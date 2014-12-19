accessing
tabCompletion: commandLine
  | tokens token tabCompletion matches longestMatch cmdLine prefix postfix |
  tokens := commandLine findTokens: ' '.
  tokens isEmpty
    ifTrue: [ self findMatchingCommandFor: '' ]
    ifFalse: [ 
      token := tokens last.
      tabCompletion := (tokens size > 1
        or: [ commandLine last isSeparator or: [ token first = $. or: [ token first = $/ ] ] ])
        ifTrue: [ 
          commandLine last isSeparator
            ifTrue: [ token := '' ].
          self findMatchingPathFor: token ]
        ifFalse: [ self findMatchingCommandFor: token ] ].
  prefix := tabCompletion at: 1.
  matches := tabCompletion at: 2.
  postfix := tabCompletion at: 3.
  matches := matches asArray sorted: [ :a :b | a <= b ].
  longestMatch := tabCompletion at: 4.
  cmdLine := ''.
  1 to: tokens size - 1 do: [ :index | cmdLine := cmdLine , (tokens at: index) , ' ' ].
  tabCompletion at: 4 put: cmdLine , prefix , longestMatch , postfix.
  ^ {matches.
  (cmdLine , prefix , longestMatch , postfix)}