as yet unclassified
addMatrix: m
	
	stream nextPutAll: 'matrix:{shx: ', m shx asString, 
		', shy: ',  m shy asString, 
		', sx: ', m sx asString, 
		', sy: ', m sy asString, 
		', x: ', m x asString, ', y: ', m y asString, '}}, '.
	