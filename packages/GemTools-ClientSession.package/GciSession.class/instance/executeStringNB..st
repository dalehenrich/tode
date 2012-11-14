public gci calls
executeStringNB: aString
    | result |
    result := self rawExecuteStringNB: aString.
    ^ self library localFor: result