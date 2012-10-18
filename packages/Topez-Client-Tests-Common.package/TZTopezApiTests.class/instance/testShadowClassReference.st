tests
testShadowClassReference
    | results x |
    results := TZLister new listProxy: self runShadowClassReference.
    self
        assert:
            (x := results renderText asString)
                =
                    'AnimalShadowRef>>shadow
AnimalShadowRef class>>shadow'