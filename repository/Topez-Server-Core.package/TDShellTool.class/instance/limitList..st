as yet unclassified
limitList: cmdTokens
  "list [<item-count>]"

  | limit |
  cmdTokens size = 1
    ifTrue: [ ^ self listLimit ].
  limit := (cmdTokens at: 2) asNumber.
  self topez listLimit: limit.
  ^ limit