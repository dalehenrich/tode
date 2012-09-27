testing
testRun3
    | result doit x |
    self topez commandOptions level: 0.
    doit := 'Object'.
    result := self topez run: doit.
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'Object
'