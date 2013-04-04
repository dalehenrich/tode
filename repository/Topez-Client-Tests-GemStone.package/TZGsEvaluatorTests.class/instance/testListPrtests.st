tests
testListPrtests
    | result x |
    self
        doNoError: [ 
            result := self runListPrtests.
            self
                assert:
                    (x := result asString)
                        =
                           'TZSTONTests' ]