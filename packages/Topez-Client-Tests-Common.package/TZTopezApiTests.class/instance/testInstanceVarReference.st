tests
testInstanceVarReference
    | results x |
    results := TZLister new listProxy: self runInstanceVarReference.
    self assert: (x := results renderText asString) ='Animal>>ahabitat
Animal>>habitat
Animal>>habitat:
Animal>>zhabitat'