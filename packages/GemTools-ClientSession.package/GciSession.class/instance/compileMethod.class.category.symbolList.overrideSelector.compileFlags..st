public gci calls
compileMethod: sourceString class: class category: category symbolList: symbolList overrideSelector: overrideSelector compileFlags: compileFlags
    | result |
    self setSession.
    self library
        apiGciCompileMethod: (sourceString asOopTypeWith: self library oopTypeClass)
        a: (class asOopTypeWith: self library oopTypeClass)
        a: (category asOopTypeWith: self library oopTypeClass)
        a: (symbolList asOopTypeWith: self library oopTypeClass)
        a: (overrideSelector asOopTypeWith: self library oopTypeClass)
        a: compileFlags
        a: 0.
    result := self getNbResultAsOop.
    ^ self library localFor: result