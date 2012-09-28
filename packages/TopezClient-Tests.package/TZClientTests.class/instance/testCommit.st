testing
testCommit
    | result x |
    result := self doNoError: [ self topez commit ].
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'true
'