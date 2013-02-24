*topez-client-gemstone
compileMethod: sourceString class: class category: category symbolList: symbolList overrideSelector: overrideSelector compileFlags: compileFlags envId: envId
  | result |
  self library
    critical: [ :lib | 
      lib apiGciSetSessionId: self getSessionNumber.
      lib
        apiGciCompileMethod: (self asOopType: sourceString)
        a: (self asOopType: class)
        a: (self asOopType: category)
        a: (self asOopType: symbolList)
        a: (self asOopType: overrideSelector)
        a: compileFlags
        a: envId ].
  result := self getNbResultAsOop.
  ^ self library localFor: result