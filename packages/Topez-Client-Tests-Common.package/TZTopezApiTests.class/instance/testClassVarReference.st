tests
testClassVarReference
    | results x |
    results := TZLister new listProxy: self runClassVarReference.
    self assert: (x := results renderText asString) = 'Animal>>ahabitat
Animal>>habitat
Animal>>zhabitat
Animal class>>referenceClassVar'