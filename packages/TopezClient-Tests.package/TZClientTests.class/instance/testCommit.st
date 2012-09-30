tests
testCommit
    | result x |
    result := self doNoError: [ self topez commit ].
    self installPrintBlocks.
    self
        assert:
            (x := result printString)
                =
                    '[Boolean] true
'