tests
testSetPackage
    | result x |
    result := self runSetPackage.
    self assert: (x := result asString) = 'Topez-Client-Tests-Common'