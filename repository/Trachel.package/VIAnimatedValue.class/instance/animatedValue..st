actions
animatedValue: values
	| val fraction currentValue |
	fraction := 1.0 / (values size -1).
	currentValue:= 0.
	self animatedPoint: 
		(values collect: [ :e | val := currentValue -> e. currentValue:= currentValue + fraction. val]).