accessing
subCommandToken
  | cmd subCommandArgPtrIndex |
  cmd := self todeCommand.
  subCommandArgPtrIndex := cmd rawTokens size - arguments size.
  ^ cmd rawTokens at: subCommandArgPtrIndex + 1