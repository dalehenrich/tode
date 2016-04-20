accessing
interactive
	^ interactive ifNil: [ interactive := Smalltalk isHeadless ]