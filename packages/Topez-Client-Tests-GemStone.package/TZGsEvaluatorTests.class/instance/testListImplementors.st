tests
testListImplementors
    | result x |
    self
        doNoError: [ 
            result := self runListImplementors.
            self
                assert:
                    (x := result asString)
                        =
                            'Object>>asTopezProxy
   TZObject>>asTopezProxy' ]