tests
testListSuperclasses
    | result x |
    result := self runListSuperclasses.
    self
        assert:
            (x := result asString)
                =
                    'Object
   TZObject'