initialize-release
of: anObject with: anotherObject by: similarityBlock
	"similarityBlock should take two arguments and return a float in the range [0,1]"
	lhs := anObject.
	rhs := anotherObject.
	similarity := similarityBlock value: lhs value: rhs.
	self
		assert: ((0 <= similarity) & (similarity <= 1))
		descriptionBlock: ['Expected similarity in range [0,1], got ', similarity printString]