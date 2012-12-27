as yet unclassified
continue
  "continue [stack-path]"

  | stackPath |
  stackPath := tokens size > 1
    ifTrue: [ tokens at: 2 ]
    ifFalse: [ self defaultHomeStackPath ].
  ^ self dbContinue: stackPath