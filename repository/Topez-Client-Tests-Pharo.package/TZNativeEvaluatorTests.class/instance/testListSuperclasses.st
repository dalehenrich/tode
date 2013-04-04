testing
testListSuperclasses
    | result x |
    result := self runListSuperclasses.
    self
        assert:
            (x := result asString)
                =
                   'ProtoObject
   Object
      TZObject'