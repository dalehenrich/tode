private
computePath
	canvas ifNil: [ ^ self ].
	path := self athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: vertices last.
			vertices do: [ :v |
				builder lineTo: v ].
			builder closePath ]