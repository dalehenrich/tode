adding
addMarker: stream
	stream 
		nextPutAll: 'marker-end = "url(#marker' , (self getDecorationId: self decoration) , ')" '