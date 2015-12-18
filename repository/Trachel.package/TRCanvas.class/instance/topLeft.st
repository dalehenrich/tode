accessing
topLeft

	^ morph
		ifNil:[ 0@0 ]
		ifNotNil: [ morph topLeft ]