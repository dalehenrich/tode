testing
testLevel2
    | result x |
    result := self runLevel: 2.
    self
        assert:
            (x := result asString)
                =
                    '[Array] anArray( 1, 2, anArray( ''a''->anArray( 1, 2, 3), anObject), 4)
#1 [SmallInteger] 1
#2 [SmallInteger] 2
#3 [Array] anArray( ''a''->anArray( 1, 2, 3), anObject)
	#1 [Association] ''a''->anArray( 1, 2, 3)
	#2 [Object] anObject
#4 [SmallInteger] 4'