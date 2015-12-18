layout-utils
layoutVerticalRow: row
	| container totalHeight areaToLayout width |
	container := rectangle currentSubrectangle.
	totalHeight := container height.
	areaToLayout := row inject: 0 into: [ :s :e | s+ (e attributes at: #area) ].
	width := areaToLayout /totalHeight.
	row do: [ :each | each extent: (width @ ( (each attributes at: #area) / width)) ].
	self translateElementsVertically: row in: container.