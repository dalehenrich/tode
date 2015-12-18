private
minimumValue: anEntity
	"Returns the smallest value that the color metric provides"
	
	minimumValue isNil
		ifTrue:
			[minimumValue := (self context rtValue: anEntity)
				inject: 100000000000 
				into:
					[:minimum :entity | minimum min: (self command rtValue: entity)]].
	^minimumValue