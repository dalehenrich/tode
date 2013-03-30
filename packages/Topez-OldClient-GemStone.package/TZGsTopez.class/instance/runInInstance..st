private
runInInstance: aString
    | result |
    result := self executeString: aString receiver: self instance level: self level.
    self setInstance: result.
    ^ result