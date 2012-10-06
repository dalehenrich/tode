tests
testRun2
    | result doit x |
    self pushPrintBlocks.
    self topez commandOptions level: 1.
    doit := '{ 1. 0. -1. {true. false.}. (''a'' -> 42) }'.
    result := self runNoError: doit.
    self
        assert:
            (x := result printString)
                =
                   '[Array] anArray( 1, 0, -1, a...etc...
#1 [SmallInteger] 1
#2 [SmallInteger] 0
#3 [SmallInteger] -1
#4 [Array] anArray( true, false...etc...
#5 [Association] ''a''->42'