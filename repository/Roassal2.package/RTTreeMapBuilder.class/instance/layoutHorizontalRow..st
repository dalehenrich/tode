layout-utils
layoutHorizontalRow: row 

	| container totalWidth areaToLayout height |
	container := self rectangle currentSubrectangle.
	totalWidth := container width.	
	areaToLayout := row inject: 0 into: [ :s :e | s + (e attributes at: #area) ].
	height := areaToLayout / totalWidth.
	row do: [ :each | each extent: (((each attributes at: #area) / height) @ height) ].	
	self translateElementsHorizontally: row in: container.