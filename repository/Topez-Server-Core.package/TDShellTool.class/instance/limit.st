as yet unclassified
limit
  "
  limit autoCommit [true|false]
  limit autoMigrate [true|false]
  limit chars [<item-count>]
  limit format [true|false]
  limit list [<item-count>]
  limit oops [true|false]
  limit protocol [true|false]
  limit transactionMode [manualBegin|autoBegin]
"

  | cmd cmdTokens |
  cmd := tokens at: 1.
  cmdTokens := tokens copyFrom: 2 to: tokens size.
  (cmdTokens at: 1) = 'autoCommit'
    ifTrue: [ 
      ^ cmdTokens size = 1
        ifTrue: [ self limitAutoCommit ]
        ifFalse: [ self limitAutoCommit: (cmdTokens at: 2) = 'true' ] ].
  (cmdTokens at: 1) = 'autoMigrate'
    ifTrue: [ 
      ^ cmdTokens size = 1
        ifTrue: [ self limitAutoMigrate ]
        ifFalse: [ self limitAutoMigrate: (cmdTokens at: 2) = 'true' ] ].
  (cmdTokens at: 1) = 'chars'
    ifTrue: [ ^ self limitChars: cmdTokens ].
  (cmdTokens at: 1) = 'format'
    ifTrue: [ ^ self limitFormat: cmdTokens ].
  (cmdTokens at: 1) = 'list'
    ifTrue: [ ^ self limitList: cmdTokens ].
  (cmdTokens at: 1) = 'oops'
    ifTrue: [ ^ self limitOops: cmdTokens ].
  (cmdTokens at: 1) = 'protocol'
    ifTrue: [ ^ self limitProtocol: cmdTokens ].
  (cmdTokens at: 1) = 'transactionMode'
    ifTrue: [ ^ self limitTransactionMode: cmdTokens ].
  self error: 'Unknown limit item: ' , (cmdTokens at: 1)