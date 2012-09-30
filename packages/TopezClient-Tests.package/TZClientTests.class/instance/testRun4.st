tests
testRun4
    | result doit x |
    self installPrintBlocks.
    self topez commandOptions level: 0.
    doit := 'Object class'.
    result := self runNoError: doit.
    self
        assert:
            (x := result printString)
                =
                    '[Metaclass3] Object class
'