public gci calls
continue: processObj
  | result |
  self setSession.
  self library apiGciNbContinue: (self asOopType: processObj).
  result := self getNbResultAsOop.
  ^ self library localFor: result