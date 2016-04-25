accessing
clientElementMap
	^ clientElementMap ifNil: [ clientElementMap := IdentityDictionary new ]