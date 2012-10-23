tests
testListReferences
    | result x |
    self
        doNoError: [ 
            result := self runListReferences.
            self
                assert:
                    (x := result asString)
                        =
                          'TZEngine>>classesInMetacelloProject:level:
TZEngine>>findMatchingClasses:level:
TZEngine>>hierarchyOf:level:
TZEngine>>newClassElement
TZEngine>>subclassesOf:level:
TZEngine>>superclassesOf:level:
TZEngine>>testClassesInMetacelloProject:level:']