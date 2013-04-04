public gci calls
continue: processObj
  | result |
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          lib apiGciSetSessionId: self getSessionNumber.
          lib
            apiGciNbContinueWith: (self asOopType: processObj)
            a: self library oopIllegal
            a: 1 ].
      result := self getNbResultAsOop.
      ^ self library localFor: result ]