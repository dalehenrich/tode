accessing
factoryBlock0
  ^ factoryBlock0 ifNil: [ factoryBlock0 := self blockFactory execBlock0 ]