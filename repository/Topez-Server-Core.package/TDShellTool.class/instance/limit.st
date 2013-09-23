as yet unclassified
limit
  "
  limit chars [<item-count>]
  limit format [true|false]
  limit list [<item-count>]
  limit oops [<item-count>]
  limit protocol [true|false]
"

  | cmd cmdTokens |
  cmd := tokens at: 1.
  cmdTokens := tokens copyFrom: 2 to: tokens size.
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
  self error: 'Unknown limit item: ' , (cmdTokens at: 1)