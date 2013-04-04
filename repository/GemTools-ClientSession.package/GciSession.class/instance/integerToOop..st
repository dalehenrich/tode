public gci calls
integerToOop: anInteger
  | result |
  result := self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib apiGciI64ToOop: anInteger ].
  ^ self library oopTypeFromInteger: result