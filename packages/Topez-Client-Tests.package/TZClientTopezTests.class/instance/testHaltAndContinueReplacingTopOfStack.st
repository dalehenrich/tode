test debugging
testHaltAndContinueReplacingTopOfStack
    "incorrect result at the moment due to bug 42524 ... result should be 134"

    | result x topOfStack newTopOfStack |
    self pushPrintBlocks.
    newTopOfStack := self runNoError: '{134. 1}'.
    result := self runExpectingError: '(Dictionary new at: 1 put: ''1''; at: 2 put: ''2''; yourself) pause at: 1'.
    result := self doNoError: [ self topez continueWith: result context replaceTopOfStackWith: newTopOfStack ].
    self
        assert:
            (x := result printString)
                =
                   '[String] 1
#1 [SmallInteger] 49
'