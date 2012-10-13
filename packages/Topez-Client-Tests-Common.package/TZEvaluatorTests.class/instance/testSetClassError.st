tests
testSetClassError
    | result x |
    result := self evaluator evaluate: 'set class Foo'.
    self assert: (x := result asString) = 'Topez ERROR: Error: the class: ''Foo'' does not exist'