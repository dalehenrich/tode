private
vMin: min max: max step: step
	^ ((self flooredMod: min n: step) < (self epsilon) 
	and: [ min <= 0 and: [ max >= 0 ] ]) ifTrue: [ 1 ] ifFalse: [ 0 ]