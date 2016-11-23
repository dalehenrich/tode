accessing
factoryBlockCompile: aString inContext: compilationContext evaluateIn: evalContext
  ^ factoryBlock
    ifNil: [ 
      factoryBlock := self blockFactory
        execBlockCompile: aString
        inContext: compilationContext
        evaluateIn: evalContext ]