as yet unclassified
hash
  ^ (super hash bitXor: self classMethods hash)
    bitXor: self instanceMethods hash