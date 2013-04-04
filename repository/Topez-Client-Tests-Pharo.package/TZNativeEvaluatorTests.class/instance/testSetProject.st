tests
testSetProject
    | result x |
    result := self runSetProject.
    self assert: (x := result asString) = '{ sz:5 ByteString} Topez'