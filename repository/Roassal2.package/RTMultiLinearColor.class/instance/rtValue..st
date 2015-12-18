accessing
rtValue: anObject
	| v |	
	v := command rtValue: anObject.
	"v ranges from 0.0 to 1.0"
	^ self level: v