accessing-computed
elementsFromModel: anObject
	"Return an element that corresponds to the object provided as parameter. If none is found, then return nil"
	^ elements select: [ :el | el model = anObject ]