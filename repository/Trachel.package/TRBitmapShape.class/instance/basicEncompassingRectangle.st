private
basicEncompassingRectangle
	rectangle ifNil: [ self computeRectangle ].
	^ rectangle