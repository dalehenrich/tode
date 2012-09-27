testing
testRun1
    | result doit x |
    doit := '{ 1. 0. -1. {true. false.}. nil }'.
    result := self topez run: doit.
    result displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := result printString)
                =
                    'anArray( 1, 0, -1, anArray( true, false), nil)
#1 1
#2 0
#3 -1
#4 anArray( true, false)
	#1 true
	#2 false
#5 nil
'