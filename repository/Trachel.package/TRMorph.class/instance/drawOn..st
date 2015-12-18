drawing
"protocol: drawing"
drawOn: aCanvas
	"aCanvas is a FormCanvas"
	
	self checkSession.
	
	aCanvas fillRectangle: bounds color: trachelCanvas color.
	trachelCanvas playAnimations.
	
	"The drawing has to be done when a change in the shapes occured or when there is an animation."
	surface drawDuring: [:cs |
		surface clear.
		
		"We display the elements that are subject to the camera"
		cs pathTransform
			translateBy: (self extent / 2) asFloatPoint;
			    scaleBy: trachelCanvas camera scale asFloat;
			translateBy: trachelCanvas camera position negated asFloatPoint.
		trachelCanvas shapes do: [ :trachelShape |
			trachelShape drawOn: cs.
		].
	
		"We display the elements that are _NOT_ subject to the camera"
		cs pathTransform loadIdentity scaleBy: 1.001.
		trachelCanvas fixedShapes do: [ :trachelShape |
			trachelShape drawOn: cs.
		].
	].
	"aCanvas translucentImage: surface asForm at: self bounds origin."
	"asForm creates a new Form, which is likely to be expensive. This can be cached"
	aCanvas image: surface asForm at: self bounds origin sourceRect: (0 @ 0 extent: surface extent) rule: 34.