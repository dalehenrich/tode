test debugging
testHaltAndContinue
    | result x |
    self installPrintBlocks.
    result := self runExpectingError: '(Dictionary new at: 1 put: ''1''; at: 2 put: ''2''; yourself) halt at: 1'.
    result := self doNoError: [ self topez continueWith: result context ].
    self
        assert:
            (x := result printString)
                =
                   '[String] ''1''
#1 [SmallInteger] 49
'