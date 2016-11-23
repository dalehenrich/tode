accessing
factoryBlockSimple
  ^ factoryBlock ifNil: [ factoryBlock := self blockFactory execBlockSimple ]