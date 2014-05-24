accessing
subCommandToken
  | cmd subCommandArgPtrIndex rawSize |
  cmd := self todeCommand.
  rawSize := cmd rawTokens size.
  subCommandArgPtrIndex := rawSize - arguments size.
  subCommandArgPtrIndex >= rawSize
    ifTrue: [ ^ nil ].
  ^ cmd rawTokens at: subCommandArgPtrIndex + 1