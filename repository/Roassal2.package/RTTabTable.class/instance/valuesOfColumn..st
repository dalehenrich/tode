accessing
valuesOfColumn: indexAsNumberOfString
	^ values collect: [ :row | row at: (self convertFromNameToIndexIfNecessary: indexAsNumberOfString) ]