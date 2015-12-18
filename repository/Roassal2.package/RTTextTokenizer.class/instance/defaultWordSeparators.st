initialization
defaultWordSeparators
	^ String
		streamContents: [ :stream | 
			stream
				nextPutAll: Character separators;
				nextPutAll: '()[]{}.;' ]