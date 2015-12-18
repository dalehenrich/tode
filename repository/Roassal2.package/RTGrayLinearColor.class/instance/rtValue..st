accessing
rtValue: anObject
	| intensity v |	
	self min = self max ifTrue: [ ^ Color gray ].
	v := command rtValue: anObject.
	intensity := 1 - ((v - self min) / (self max - self min)).
	^ Color r: intensity g: intensity b: intensity