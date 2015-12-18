as yet unclassified
rtValue: anObject

	^ (self buckets detect: [ :pair | pair first = (self bucketIndexOf: anObject) ] ) second	
