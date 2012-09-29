tests
testRun2
    | result doit x |
    self topez commandOptions level: 1.
    doit := '{ 1. 0. -1. {true. false.}. (''a'' -> 42) }'.
    result := self runNoError: doit.
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'anArray( 1, 0, -1, anArray( true, false), ''a''->42)
#1 1
#2 0
#3 -1
#4 anArray( true, false)
#5 ''a''->42
'