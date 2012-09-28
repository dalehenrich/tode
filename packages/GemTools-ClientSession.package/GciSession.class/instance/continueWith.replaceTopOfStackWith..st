debugging
continueWith: processObj replaceTopOfStackWith: replacementObj
    | result |
    self setSession.
    self library
        apiGciNbContinueWith: (processObj asOopTypeWith: self library oopTypeClass)
        a: (replacementObj asOopTypeWith: self library oopTypeClass)
        a: 1.
    result := self getNbResultAsOop.
    ^ self library localFor: result