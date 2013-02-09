as yet unclassified
differentMethodCreated: selector
  | newMethod |
  newMethod := self theBehavior compiledMethodAt: selector asSymbol.
  self object: newMethod