tests
testListReferences
    | result x |
    result := self runListReferences.
    self
        assert:
            (x := result asString)
                =
                    'TopezPharoSession>>classElementForClass:
TopezPharoSession>>classesInMetacelloProject:
TopezPharoSession>>findMatchingClasses:
TopezPharoSession>>hierarchyOf:
TopezPharoSession>>newClassElement
TopezPharoSession>>subclassesOf:
TopezPharoSession>>superclassesOf:
TopezPharoSession>>testClassesInMetacelloProject:'