tests
testClassVarReference
    | results x |
    results := TZLister new listProxy: self runClassVarReference.
    self assert: (x := results renderText asString) = 'Animal>>habitat
Animal class>>referenceClassVar'