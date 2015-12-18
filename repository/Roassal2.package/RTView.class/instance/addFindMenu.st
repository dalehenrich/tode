menu
addFindMenu
	
	self addMenu: 'Find' callback: [ |element|
		element := TRPlatform current dialogChooseFrom: (self elements collect: #model) values: self elements.
		element notNil
			ifTrue: [ self canvas camera translateTo: element position. RTBlink on: element ] ].