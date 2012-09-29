tests
testRun4
    | result doit x |
    self topez commandOptions level: 0.
    doit := 'Object class'.
    result := self runNoError: doit.
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'Object class
'