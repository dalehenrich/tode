accessing
rectangle
	^ rectangle
		ifNil: [ 
			canvas
				ifNil: [  ]
				ifNotNil: [ 
					| rect |
					rect := canvas extent negated / 2.0 extent: canvas extent.
					copyright translateTo: rect corner - (copyright extent / 2).
					rect ] ]