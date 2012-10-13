testing
testLevel2
    | result x |
    result := self runLevel: 2.
    self assert: (x := result asString) = '{ sz:4 Array} an Array(1 2 an Arra...etc...'