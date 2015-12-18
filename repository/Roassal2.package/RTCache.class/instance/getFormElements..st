as yet unclassified
getFormElements: someElements
	"Return a form contains the graphical representation of the elements"
	
	| extent surface formCanvas |
	extent := someElements extent asIntegerPoint.
	surface := AthensCairoSurface extent: extent.
	formCanvas := FormCanvas extent: extent.
	formCanvas fillRectangle: ((0 @ 0) extent: extent) color: Color transparent.
	surface
		drawDuring: [ :cs | 
			"Probably not necessary since we have just created a surface"
			cs pathTransform
				translateBy: (someElements encompassingRectangle topLeft) negated asFloatPoint
				"translateBy: (someElements position asFloatPoint) negated"
				"scaleBy: self cameraScale;
				translateBy: self cameraPositionNegated".
			surface clear.
			someElements do: [ :element | element trachelShape drawOn: cs ].
			cs pathTransform loadIdentity scaleBy: 1.001. ].
	formCanvas
		image: surface asForm
		at: 0 @ 0
		sourceRect: (0 @ 0 extent: surface extent)
		rule: 34.
	^ formCanvas form