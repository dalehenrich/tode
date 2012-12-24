as yet unclassified
limit
  "limit list [<item-count>]"

  | cmd cmdTokens |
  cmd := tokens at: 1.
  cmdTokens := tokens copyFrom: 2 to: tokens size.
  cmd = 'limit'
    ifTrue: [ ^ self limitList: cmdTokens ]