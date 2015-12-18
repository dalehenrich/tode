button effect
addContribution: aStream
	aStream nextPutAll: self fixedName , '_data["',self targetNameAttribute,self target identityHash asString,'"]  = "',(self dataAsString: (self val rtValue: self target model)),'";', String cr.