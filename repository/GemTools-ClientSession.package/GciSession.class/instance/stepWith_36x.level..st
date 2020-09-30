public gci calls
stepWith_36x: processObj level: level
  "send messages to processObj, instead of gci calls --- #apiGciNbStep:asOopType: is failing for unknown reason against 3.6.0 gci library --- rest of calls are working fine???"

  | result |
  self class gsCursor
    showWhile: [ 
      result := self library
        critical: [ :lib | 
	      | argsArrayAddress |
          lib apiGciSetSessionId: self getSessionNumber.
          argsArrayAddress := lib addressOfArrayOfOopsForObjects: { level }.
          lib apiGciNbPerform: (self asOopType: processObj) a: 'gciStepOverFromLevel:' a: argsArrayAddress asInteger a: 1 ].
      result := self getNbResultAsOop.
      ^ self library localFor: result ]