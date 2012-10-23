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
                          'TZClassElement class>>hierarchyForClasses:extensionClasses:
TZClassElement class>>hierarchyOf:
TZClassElement class>>subclassesOf:
TZClassElement class>>superclassesOf:
TZEngine>>classElementForClass:
TZEngine>>classesInMetacelloProject:level:
TZEngine>>findMatchingClasses:level:
TZEngine>>hierarchyOf:level:
TZEngine>>subclassesOf:level:
TZEngine>>superclassesOf:level:
TZEngine>>testClassesInMetacelloProject:level:' ]