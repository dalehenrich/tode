public gci calls
executeStringNB: aString envId: envId
  | result |
  result := self rawExecuteStringNB: aString envId: envId.
  ^ self library localFor: result