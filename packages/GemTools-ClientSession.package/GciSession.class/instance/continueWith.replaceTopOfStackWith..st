public gci calls
continueWith: processObj replaceTopOfStackWith: replacementObj
    | result |
    self setSession.
    self library
        apiGciNbContinueWith: (self asOopType: processObj)
        a: (self asOopType: replacementObj)
        a: 1.
    result := self getNbResultAsOop.
    ^ self library localFor: result