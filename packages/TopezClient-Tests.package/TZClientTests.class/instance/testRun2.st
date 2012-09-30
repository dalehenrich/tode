tests
testRun2
    | result doit x |
    self installPrintBlocks.
    self topez commandOptions level: 1.
    doit := '{ 1. 0. -1. {true. false.}. (''a'' -> 42) }'.
    result := self runNoError: doit.
    self
        assert:
            (x := result printString)
                =
                   '[Array] anArray( 1, 0, -1, anArray( true, false), ''a''->42)
#1 [SmallInteger] 1
#2 [SmallInteger] 0
#3 [SmallInteger] -1
#4 [Array] anArray( true, false)
#5 [Association] ''a''->42
'