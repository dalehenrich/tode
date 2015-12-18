converting
convertColumnsAsFloat: collectionOfIntegers
	^ self convertColumns: collectionOfIntegers to: [ :s | Float readFrom: s ]