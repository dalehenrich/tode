tests
testListReferences
    | result x |
    result := self runListReferences.
    self
        assert:
            (x := result asString)
                =
                    'TZClassElement class>>hierarchyForClasses:extensionClasses:
TZClassElement class>>hierarchyOf:
TZClassElement class>>subclassesOf:
TZClassElement class>>superclassesOf:
TopezPharoSession>>classElementForClass:
TopezPharoSession>>classesInMetacelloProject:
TopezPharoSession>>findMatchingClasses:
TopezPharoSession>>hierarchyOf:
TopezPharoSession>>subclassesOf:
TopezPharoSession>>superclassesOf:
TopezPharoSession>>testClassesInMetacelloProject:'