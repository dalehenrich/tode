accessing
rtValue: anEntity
	
	^dictionary
		at: (command rtValue: anEntity)
		ifAbsentPut: [ self nextColor ]