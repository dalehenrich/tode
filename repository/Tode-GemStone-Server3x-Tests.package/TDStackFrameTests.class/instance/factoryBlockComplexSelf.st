accessing
factoryBlockComplexSelf
  ^ factoryBlock
    ifNil: [ factoryBlock := self blockFactory execBlockComplexSelf ]