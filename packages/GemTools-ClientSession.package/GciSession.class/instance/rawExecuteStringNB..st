public gci calls
rawExecuteStringNB: aString
  self setSession.
  Transcript
    cr;
    show: 'GciSession>>rawExecuteStringNB: ' , (aString printStringLimitedTo: 15).
  self library apiGciNbExecuteStr: aString a: self library oopNil.
  ^ self getNbResultAsOop