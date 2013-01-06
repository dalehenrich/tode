public gci calls
continue: processObj
  | result |
  self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib apiGciNbContinue: (self asOopType: processObj) ].
  result := self getNbResultAsOop.
  ^ self library localFor: result