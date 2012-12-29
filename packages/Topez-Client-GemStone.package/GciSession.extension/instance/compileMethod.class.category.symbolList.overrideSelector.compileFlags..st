*topez-client-gemstone
compileMethod: sourceString class: class category: category symbolList: symbolList overrideSelector: overrideSelector compileFlags: compileFlags
    | result |
    self setSession.
    self library
        apiGciCompileMethod: (self asOopType: sourceString)
        a: (self asOopType: class)
        a: (self asOopType: category)
        a: (self asOopType: symbolList)
        a: (self asOopType: overrideSelector)
        a: compileFlags
        a: 0.
    result := self getNbResultAsOop.
    ^ self library localFor: result