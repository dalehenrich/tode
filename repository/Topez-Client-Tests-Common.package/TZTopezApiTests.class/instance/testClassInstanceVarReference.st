tests
testClassInstanceVarReference
    | results x |
    self
        doNoError: [ 
            results := TZLister new listProxy: self runClassInstanceVarReference.
            self assert: (x := results renderText asString) = 'Animal class>>referenceClassVar' ]