public gci calls
continueWith: processObj replaceTopOfStackWith: replacementObj
  | result |
  self class gsCursor
    showWhile: [ 
      self library
        critical: [ :lib | 
          lib apiGciSetSessionId: self getSessionNumber.
          lib apiGciNbContinueWith: (self asOopType: processObj) a: (self asOopType: replacementObj) a: 1 ].
      result := self getNbResultAsOop.
      ^ self library localFor: result ]