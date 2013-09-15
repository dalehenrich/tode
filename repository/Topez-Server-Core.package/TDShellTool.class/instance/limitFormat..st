as yet unclassified
limitFormat: cmdTokens
  "format [true|false]"

  | bool |
  cmdTokens size = 1
    ifTrue: [ ^ self topez enableFormatting ].
  bool := (cmdTokens at: 2) = 'true'.
  self topez enableFormatting: bool.
  ^ bool