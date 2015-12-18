adding
addDynamicObject: anObject

	(objects includes: anObject) ifFalse: [ 
		objects add: anObject.
		self build.
		self view signalUpdate.
		]