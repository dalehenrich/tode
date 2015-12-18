accessing
expansion
	^ expansion inject: #() into: [ :acc :next | (acc, next value) ]