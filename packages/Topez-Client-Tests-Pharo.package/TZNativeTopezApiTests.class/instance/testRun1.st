tests
testRun1
    | result x |
    result := self runRun1.
    self
        assert:
            (x := result printString)
                =
                    '{ sz:5 Array} #(1 0 -1 #(true false) nil)
'