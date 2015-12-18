control points
setControllingElementsFromFollowFor: anEdge
	controllingElements := self getControllingElementsFromFollowFor: anEdge
	
"	(anEdge hasAttribute: #controllingElements)
		ifTrue: [ controllingElements := anEdge attributeAt: #controllingElements ]
		ifFalse: [ controllingElements := self getControllingElementsFromFollowFor: anEdge.
			anEdge attributeAt: #controllingElements put: controllingElements ] 
"	