public
exportToFile
	| trachelCanvas form surface viewExtent |
	trachelCanvas := self trachelCanvas.
	viewExtent := self viewExtent.
	form := self createFormCanvas.
	surface := self createSurface.
	

	surface
		drawDuring: [ :cs | 
			"Probably not necessary since we have just created a surface"
			surface clear.
			cs pathTransform
				translateBy: self viewHalfExtent asFloatPoint;
				scaleBy: self cameraScale asFloat;
				translateBy: self cameraPositionNegated asFloatPoint.
			trachelCanvas shapes do: [ :trachelShape | trachelShape drawOn: cs ].
			cs pathTransform loadIdentity scaleBy: 1.001.
			"trachelCanvas fixedShapes do: [ :trachelShape | trachelShape drawOn: cs ]" ].
	form
		image: surface asForm
		at: 0 @ 0
		sourceRect: (0 @ 0 extent: surface extent)
		rule: 34.
	surface writeToPng: self fileName