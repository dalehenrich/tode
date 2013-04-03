tests
testListSenders
    | result x |
    self
        doNoError: [ 
            result := self runListSenders.
            self assert: (x := result asString) = 'TZProxyObject class>>initializeClickBlocks' ]