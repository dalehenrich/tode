accessing
attributesOf: object
	^ self instanceVariables ifNil: [ #() ] ifNotNil: [ :m | m rtValue: object]