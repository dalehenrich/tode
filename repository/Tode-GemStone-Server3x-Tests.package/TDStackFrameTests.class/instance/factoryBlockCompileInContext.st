accessing
factoryBlockCompileInContext
  ^ factoryBlockCompileInContext
    ifNil: [ factoryBlockCompileInContext := self blockFactory execBlockCompileInContext ]