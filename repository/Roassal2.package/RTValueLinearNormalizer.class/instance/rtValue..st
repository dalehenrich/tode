accessing
rtValue: anEntity
	
	"Normalize value based on minimum and maximum value."
	| value slope |
	value := self command rtValue: anEntity.
	slope := self slope: anEntity.
	^ ((value abs * slope) + self maxScale - ((self maximumValue: anEntity) asFloat * slope)) asInteger