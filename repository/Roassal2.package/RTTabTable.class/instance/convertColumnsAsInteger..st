converting
convertColumnsAsInteger: collectionOfIntegers
	^ self convertColumns: collectionOfIntegers to: [ :s | Integer readFrom: s ]