public gci calls
newString: aString
    | result |
    self setSession.
    result := self newStringOopType: aString.
    ^ self library localFor: result