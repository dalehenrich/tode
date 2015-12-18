util
destinationAttachPointsFor: anEdge
	"Return the four possible attach points for each of the four sides for this edges destination node."
	^ self attachPointsFor: anEdge on: (anEdge to).