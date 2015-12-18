as yet unclassified
bucketIndexOf: anObject

	|value |
	value := command value: anObject.
	^ (self buckets collect: #first) detect: [ :step | value <= step ]. 
	