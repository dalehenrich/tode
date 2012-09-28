Library
executeStringNB: aString
    | ans result |
    self setSession.
    self library apiGciNbExecuteStr: aString a: self library oopNil.
    result := self getNbResultAsOop.
    ans := self library localFor: result.
    ^ ans