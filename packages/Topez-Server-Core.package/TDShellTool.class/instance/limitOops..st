as yet unclassified
limitOops: cmdTokens
  "oops [<item-count>]"

  | bool |
  cmdTokens size = 1
    ifTrue: [ ^ self displayOops ].
  bool := (cmdTokens at: 2) = 'true'.
  self topez displayOops: bool.
  ^ bool