public gci calls
newStringOopType: aString
  | result |
  result := self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib apiGciNewString: aString ].
  ^ self library oopTypeFromInteger: result