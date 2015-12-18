public
forCollection: aCollection 
	^ (aCollection collect: [ :v | self on: v ]) asArray