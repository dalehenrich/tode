private
epsilon
	" Compute the machine epsilon for the float type, the largest positive 
 	floating-point value that, when added to 1, results in a value equal to 1 due to 
 	roundoff."
	| temp |
	epsilon ifNotNil: [ ^ epsilon ].
	temp := 0.5.
	[ (1 + temp) > 1 ] whileTrue: [ temp := temp / 2 ].
	epsilon := temp.
	^ epsilon.
	