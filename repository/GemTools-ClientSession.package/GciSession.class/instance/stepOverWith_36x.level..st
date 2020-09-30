public gci calls
stepOverWith_36x: processObj level: level
  "level = 0 step into
     level = 1 step over from top of stack
     level > 1 step over from level on stack"

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