private
maximumValue: anEntity
	"Returns the largest value that the color metric provides"
	
	maximumValue isNil
		ifTrue:
			[maximumValue := (self context rtValue: anEntity)
				inject: 1
				into:
					[:maximum :entity | maximum max: (self command rtValue: entity)]].
	^maximumValue