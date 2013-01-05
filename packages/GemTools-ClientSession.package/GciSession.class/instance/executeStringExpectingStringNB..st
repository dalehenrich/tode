public gci calls
executeStringExpectingStringNB: aString
  Transcript
    cr;
    show: 'GciSession>>executeStringExpectingStringNB: ' , (aString printStringLimitedTo: 15).
  self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib apiGciNbExecuteStr: aString a: self library oopNil ].
  ^ self getNbResultAsString