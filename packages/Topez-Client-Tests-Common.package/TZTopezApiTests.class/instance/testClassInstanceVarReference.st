tests
testClassInstanceVarReference
    | results x |
    results := TZLister new listProxy: self runClassInstanceVarReference.
    self assert: (x := results renderText asString) = 'Animal class>>referenceClassVar'