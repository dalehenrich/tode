testing
testLevel0
    | result x |
    result := self runLevel: 0.
    self assert: (x := result asString) = '{ sz:4 Array} an Array(1 2 an Arra...etc...'