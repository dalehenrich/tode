public gci calls
rawExecuteStringNB: aString
    self setSession.
    self library apiGciNbExecuteStr: aString a: self library oopNil.
    ^ self getNbResultAsOop