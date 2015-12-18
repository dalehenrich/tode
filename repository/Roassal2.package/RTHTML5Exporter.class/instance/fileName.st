accessing
fileName
	^ fileName ifNil: [ fileName := self defaultFileName. ]