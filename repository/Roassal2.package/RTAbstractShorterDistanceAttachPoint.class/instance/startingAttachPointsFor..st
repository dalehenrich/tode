util
startingAttachPointsFor: anEdge
	"Return the four possible attach points for each of the four sides for this edges starting node."
	^ self attachPointsFor: anEdge on: (anEdge from).