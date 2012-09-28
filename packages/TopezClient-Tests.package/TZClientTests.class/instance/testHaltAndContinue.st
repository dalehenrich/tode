tests
testHaltAndContinue
    | result x |
    result := self runExpectingError: '(Dictionary new at: 1 put: ''1''; at: 2 put: ''2''; yourself) halt at: 1'.
    result := self doNoError: [ self topez continueWith: result context ].
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    '''1''
#1 49
'