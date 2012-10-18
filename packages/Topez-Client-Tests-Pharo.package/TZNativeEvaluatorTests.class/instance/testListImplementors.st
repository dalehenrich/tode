tests
testListImplementors
    | result x |
    result := self runListImplementors.
    self
        assert:
            (x := result asString)
                =
                   'Object>>asTopezProxy
   Exception>>asTopezProxy
   Gci3xErrSType64>>asTopezProxy
   OopType>>asTopezProxy
   TZObject>>asTopezProxy'