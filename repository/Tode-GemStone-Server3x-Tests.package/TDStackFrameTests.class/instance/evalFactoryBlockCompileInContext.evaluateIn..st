block methods
evalFactoryBlockCompileInContext: compileContext evaluateIn: evalContext
  ^ (self factoryBlockCompileInContext: compileContext evaluateIn: evalContext)
    value