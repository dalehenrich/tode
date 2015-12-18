accessing-computed
edgeFromModel: anObject
	"Return an edge that corresponds to the object provided as parameter. If none is found, then return nil"
	^ edges detect: [ :edge | edge model = anObject ] ifNone: [ nil ]