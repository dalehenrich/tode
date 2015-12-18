hooks
computePath
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: from;
				lineTo: to ]