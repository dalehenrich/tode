testing
testLevel4
    | result x |
    result := self runLevel: 4.
    self
        assert:
            (x := result asString)
                =
                    '[Array] anArray( 1, 2, anArr...etc...
#1 [SmallInteger] 1
#2 [SmallInteger] 2
#3 [Array] anArray( ''a''->anArra...etc...
	#1 [Association] ''a''->anArray( 1, 2, ...etc...
		 key			[String] a
			#1 [SmallInteger] 97
		 value			[Array] anArray( 1, 2, 3)
			#1 [SmallInteger] 1
			#2 [SmallInteger] 2
			#3 [SmallInteger] 3
	#2 [Object] anObject
#4 [SmallInteger] 4'