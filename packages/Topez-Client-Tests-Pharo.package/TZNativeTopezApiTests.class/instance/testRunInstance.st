tests
testRunInstance
    | result x |
    result := self runInstance.
    self
        assert:
            (x := result printString)
                =
                    '{ sz:5 Array} #(1 0 -1 #(true fals...etc...
'