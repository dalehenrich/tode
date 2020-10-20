public gci calls
stepIntoWith_36x: processObj level: level
  "step into from level"

  | result |
  self class gsCursor
    showWhile: [ 
      result := self library
        critical: [ :lib | 
	      | argsArrayAddress |
          lib apiGciSetSessionId: self getSessionNumber.
          argsArrayAddress := lib addressOfArrayOfOopsForObjects: { level }.
          lib apiGciNbPerform: (self asOopType: processObj) a: 'gciStepIntoFromLevel:' a: argsArrayAddress asInteger a: 1 ].
      result := self getNbResultAsOop.
      ^ self library localFor: result ]