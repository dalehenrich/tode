testing
isEmpty
	self list
		valuesDo: [ :list | 
			list isEmpty
				ifFalse: [ ^ false ] ].
	self map
		valuesDo: [ :dict | 
			dict isEmpty
				ifFalse: [ ^ false ] ].
	^ true