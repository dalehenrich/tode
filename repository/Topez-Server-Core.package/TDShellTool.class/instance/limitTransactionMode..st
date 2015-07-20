as yet unclassified
limitTransactionMode: cmdTokens
  "limit transactionMode [manualBegin|autoBegin]"

  | mode |
  cmdTokens size = 1
    ifTrue: [ ^ System transactionMode asString ].
  mode := cmdTokens at: 2.
  (mode = 'autoBegin' or: [ mode = 'manualBegin' ])
    ifTrue: [ 
      System transactionMode: mode asSymbol.
      ^ mode ].
  self
    error:
      'Unrecognized transaction mode ' , mode printString
        , '. Should be ''autoBegin'' or ''manualBegin'''