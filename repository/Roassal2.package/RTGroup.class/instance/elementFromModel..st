public
elementFromModel: anObject
	"Return an element that corresponds to the object provided as parameter. If none is found, then return nil"
	^ self detect: [ :el | el model = anObject ] ifNone: [ nil ]