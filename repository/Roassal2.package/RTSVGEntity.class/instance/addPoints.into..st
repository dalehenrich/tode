adding
addPoints: anArrayOfPoints into: stream
	| s |
	s := ((anArrayOfPoints asString copyReplaceAll: '@' with: ',') copyReplaceAll: '.' with: ' ') replaceAllRegex: '[(){}]' with: '' .
	
	stream
		nextPutAll:
				('points="', s,'" ').