accessing
rtValue: anEntity
	"Normalize value based on maximum value."
	
	| value |
	value := self command rtValue: anEntity.
	^ ((value abs / (self maximumValue: anEntity)) asFloat * self scale) asInteger