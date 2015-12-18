accessing
rtValue: anEntity
	"Calculates the color of the entity based on the context."
	
	| myValue myHighColor myLowColor myMinBrightness myMaxBrightness weight minValue maxValue |
	"Get color specific data"
	minValue :=  self minimumValue: anEntity.
	maxValue :=  self maximumValue: anEntity.
	myMinBrightness := self minBrightnessFor: anEntity.
	myMaxBrightness := self maxBrightnessFor: anEntity.
	myHighColor := self highColorFor: anEntity.
	myLowColor := self lowColorFor: anEntity.	"Get data"
	weight := minValue = maxValue 
		ifTrue: [(myMinBrightness + myMaxBrightness) / 2]
		ifFalse: [	
			myValue := (self command rtValue: anEntity) - (self minimumValue: anEntity).
			myMinBrightness + (myValue abs / (maxValue - minValue) * (myMaxBrightness - myMinBrightness)) ].
	^self blend: myLowColor with: myHighColor weight: weight