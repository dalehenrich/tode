accessing
id
	id ifNil: [ id :=  element identityHash asString].
	^ id