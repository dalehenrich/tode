private
simplicity: min max: max step: step
	(nice qvar size > 1) ifTrue: [ 
		^ 1 - (n i/ (nice qvar size - 1)) - n j + (self vMin: min max: max step: step) ].
	^ 1 - n j + (self vMin: min max: max step: step)
		