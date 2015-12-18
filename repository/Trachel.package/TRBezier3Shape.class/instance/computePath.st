hooks
computePath
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: listOfPoints first.
			builder 
				curveViaX: listOfPoints first x asFloat Y: listOfPoints first y asFloat
				viaX: listOfPoints second x asFloat Y: listOfPoints second y asFloat 
				toX: listOfPoints third x asFloat Y: listOfPoints third y asFloat.
		]