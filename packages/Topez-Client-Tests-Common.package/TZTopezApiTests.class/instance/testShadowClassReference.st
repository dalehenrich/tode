tests
testShadowClassReference
    | results x |
    results := TZLister new listProxy: self runShadowClassReference.
    self
        assert:
            (x := results renderText asString)
                =
                    'Animal>>shadow
Animal class>>shadow
AnimalShadowRef>>shadow
AnimalShadowRef class>>shadow'