public gci calls
executeStringNB: aString
    | result |
    self setSession.
    self library apiGciNbExecuteStr: aString a: self library oopNil.
    result := self getNbResultAsOop.
    ^ self library localFor: result