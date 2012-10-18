tests
testShadowClassVarReference
    | results x |
    results := TZLister new listProxy: self runShadowClassVarReference.
    self
        assert:
            (x := results renderText asString)
                =
                   'Animal>>shadow
Animal class>>shadow'