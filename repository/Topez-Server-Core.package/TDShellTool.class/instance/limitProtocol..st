as yet unclassified
limitProtocol: cmdTokens
  "protocol [true|false]"

  | bool |
  cmdTokens size = 1
    ifTrue: [ ^ self topez enableProtocol ].
  bool := (cmdTokens at: 2) = 'true'.
  self topez enableProtocol: bool.
  ^ bool