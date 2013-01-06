public gci calls
stepWith: processObj level: level
  "level = 0 step into
     level = 1 step over from top of stack
     level > 1 step over from level on stack"

  | result |
  result := self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib apiGciNbStep: (self asOopType: processObj) a: level ].
  result := self getNbResultAsOop.
  ^ self library localFor: result