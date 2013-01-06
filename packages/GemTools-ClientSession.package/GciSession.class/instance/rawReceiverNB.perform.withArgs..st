public gci calls
rawReceiverNB: receiver perform: aString withArgs: argsArray
  Transcript
    cr;
    show: 'GciSession>>rawReceiverNB:perform:withArgs: ' , aString.
  self library
    critical: [ :lib | 
      | address |
      lib apiGciSetSessionId: self getSessionNumber.
      address := lib addressOfArrayOfOopsForObjects: argsArray.
      lib
        apiGciNbPerform: (self asOopType: (lib oopFor: receiver))
        a: aString
        a: address asInteger
        a: argsArray size ].
  ^ self getNbResultAsOop