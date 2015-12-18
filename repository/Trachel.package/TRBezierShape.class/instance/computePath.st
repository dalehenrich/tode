hooks
computePath
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: listOfPoints first.
			
			(2 to: (listOfPoints size -2)) do: [ :index |
				builder 
					curveVia: (listOfPoints at: index) 
					to: (((listOfPoints at: index) + (listOfPoints at: (index + 1))) / 2) asFloatPoint.
			].
			builder 
				curveVia: (listOfPoints at: (listOfPoints size -1) )
				to: (listOfPoints at: (listOfPoints size) ) .
		]