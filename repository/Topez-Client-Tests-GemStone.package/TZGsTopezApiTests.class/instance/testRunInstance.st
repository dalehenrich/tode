tests
testRunInstance
    | result x |
    result := self runInstance.
    self
        assert:
            (x := result printString)
                =
                   '[Array] anArray( 1, 0, -1, anArray( true, false), nil)
#1 [SmallInteger] 1
#2 [SmallInteger] 0
#3 [SmallInteger] -1
#4 [Array] anArray( true, false)
	#1 [Boolean] true
	#2 [Boolean] false
#5 [UndefinedObject] nil'