api
runInInstance: aString
    | result |
    result := self evaluate: aString in: nil to: self instance.
    self setInstance: result.
    ^ result