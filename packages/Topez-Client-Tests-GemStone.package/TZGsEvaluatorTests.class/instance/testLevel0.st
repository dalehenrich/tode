testing
testLevel0
    | result x |
    result := self runLevel: 0.
    self assert: (x := result asString) = '[Array] anArray( 1, 2, anArr...etc...'