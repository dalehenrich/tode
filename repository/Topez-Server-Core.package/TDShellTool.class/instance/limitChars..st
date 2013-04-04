as yet unclassified
limitChars: cmdTokens
  "chars [<item-count>]"

  | limit |
  cmdTokens size = 1
    ifTrue: [ ^ self topez characterLimit ].
  limit := (cmdTokens at: 2) asNumber.
  self topez characterLimit: limit.
  ^ limit