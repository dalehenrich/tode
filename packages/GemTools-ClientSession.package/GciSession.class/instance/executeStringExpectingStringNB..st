public gci calls
executeStringExpectingStringNB: aString
  self setSession.
  Transcript
    cr;
    show: 'GciSession>>executeStringExpectingStringNB: ' , (aString printStringLimitedTo: 15).
  self library apiGciNbExecuteStr: aString a: self library oopNil.
  ^ self getNbResultAsString