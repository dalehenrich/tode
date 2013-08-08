as yet unclassified
performGitCommand: gitCommand requiredCommandArgs: requiredCommandArgs defaultArgs: defaultArgs
  | gitPathArg gitRepoDirectory gitArgs |
  gitArgs := defaultArgs.
  tokens size = 1
    ifTrue: [ 
      requiredCommandArgs > 1
        ifTrue: [ self error: 'missing required arguments' ].
      gitRepoDirectory := self resolveDefaultGitRepoDirectory ]
    ifFalse: [ 
      gitArgs := tokens at: 2.
      tokens size > 2
        ifTrue: [ 
          gitPathArg := tokens at: 3.
          gitRepoDirectory := (gitPathArg beginsWith: '@')
            ifTrue: [ self resolveAtPathReference: gitPathArg ]
            ifFalse: [ ServerFileDirectory on: gitPathArg ] ]
        ifFalse: [ 
          requiredCommandArgs > 2
            ifTrue: [ self error: 'missing required arguments' ].
          gitRepoDirectory := self resolveDefaultGitRepoDirectory ] ].
  ^ self performGitCommand: gitCommand in: gitRepoDirectory with: gitArgs