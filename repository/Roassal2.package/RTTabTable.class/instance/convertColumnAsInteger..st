converting
convertColumnAsInteger: integerOrString
	^ self convertColumnsAsInteger: (Array with: (self convertFromNameToIndexIfNecessary: integerOrString))