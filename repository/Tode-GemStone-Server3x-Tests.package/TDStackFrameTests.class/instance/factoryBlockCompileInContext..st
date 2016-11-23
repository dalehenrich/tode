accessing
factoryBlockCompileInContext: aContext
  ^ factoryBlockCompileInContext
    ifNil: [ 
      factoryBlockCompileInContext := self blockFactory
        execBlockCompileInContext: aContext ]