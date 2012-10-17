tests
testRun2
    | result x |
    result := self runRun2.
    self
        assert:
            (x := result printString)
                =
                    '{ sz:5 Array} {1. 0. -1. #(true fa...etc...
'