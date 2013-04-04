testing
testLevel3
    | result x |
    result := self runLevel: 3.
    self assert: (x := result asString) = '{ sz:4 Array} an Array(1 2 an Array(''a''->#(1 2 3) an Object) 4)'