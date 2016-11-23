accessing
factoryBlockCompileInContext: compileContext evaluateIn: evalContext
  ^ factoryBlockCompileInContextEvaluateIn
    ifNil: [ 
      factoryBlockCompileInContextEvaluateIn := self blockFactory
        execBlockCompileInContext: compileContext
        evaluateIn: evalContext ]