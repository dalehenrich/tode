hooks
computePath
	canvas ifNil: [ ^ self ].
	path := self athensCanvas
				createPath: [ :builder | 
					builder
						absolute;
						moveTo: 0 @ 0.5;
						ccwArcTo: 0.5 @ 0.0 angle: 90 degreesToRadians;
						ccwArcTo: 0.0 @ -0.5 angle: 90 degreesToRadians;
						ccwArcTo: -0.5 @ 0.0 angle: 90 degreesToRadians;
						ccwArcTo: 0 @ 0.5 angle: 90 degreesToRadians ].
	