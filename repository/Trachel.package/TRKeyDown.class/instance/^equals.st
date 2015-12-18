comparing
= anotherKeyDown
	"Do we really need this method? It has been imported from Roassal1"
	(self class == anotherKeyDown) ifFalse: [  ^ false ].
	^ self keyValue = anotherKeyDown keyValue