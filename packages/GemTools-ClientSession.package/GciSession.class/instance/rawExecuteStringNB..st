public gci calls
rawExecuteStringNB: aString
  Transcript
    cr;
    show: 'GciSession>>rawExecuteStringNB: ' , (aString printStringLimitedTo: 15).
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          lib apiGciSetSessionId: self getSessionNumber.
          lib apiGciNbExecuteStr: aString a: self library oopNil ].
      ^ self getNbResultAsOop ]