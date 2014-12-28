as yet unclassified
limitAutoCommit: cmdTokens
  "autoCimmit [<boolean>]"

  | bool |
  cmdTokens size = 1
    ifTrue: [ ^ self topez autoCommit ].
  bool := (cmdTokens at: 2) = 'true'.
  self topez autoCommit: bool.
  ^ bool