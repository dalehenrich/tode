accessing
factoryBlockComplexSelf
  ^ factoryBlockComplexSelf
    ifNil: [ factoryBlockComplexSelf := self blockFactory execBlockComplexSelf ]