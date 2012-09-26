testing
testClient
    | x |
    self assert: (x := self session simpleResult asString) = '[1,0,-1,true,false,nil]'