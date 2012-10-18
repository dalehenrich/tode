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
TZEngine class>>classElementForClass:
TZEngine class>>classesInMetacelloProject:level:
TZEngine class>>findMatchingClasses:level:
TZEngine class>>hierarchyOf:level:
TZEngine class>>subclassesOf:level:
TZEngine class>>superclassesOf:level:
TZEngine class>>testClassesInMetacelloProject:level:' ]