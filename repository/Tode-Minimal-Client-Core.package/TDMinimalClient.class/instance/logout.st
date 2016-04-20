login/logout
logout
	session
		ifNotNil: [ :sess | 
			session := nil.
			sess logout ]