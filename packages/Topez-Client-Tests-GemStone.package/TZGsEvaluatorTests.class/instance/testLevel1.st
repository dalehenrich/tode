testing
testLevel1
    | result x |
    result := self runLevel: 1.
    self
        assert:
            (x := result asString)
                =
                    '[Array] anArray( 1, 2, anArray( ''a''->anArray( 1, 2, 3), anObject), 4)
#1 [SmallInteger] 1
#2 [SmallInteger] 2
#3 [Array] anArray( ''a''->anArray( 1, 2, 3), anObject)
#4 [SmallInteger] 4'