accessing
rtValue: anEntity
	"Calculates the color of the entity based on the context."
	
	| value |
	value := self command rtValue: anEntity.
	^5 + (38 * (value abs / (self maximumValue: anEntity))) asInteger