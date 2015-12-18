nesting
elementWithFontsZooming
	"
	self new elementWithFontsZooming
	"
	| view firstGroup secondGroup bothGroups mainElement originalExtent mainWithNested |
	view := RTView new.
	"element creation"
	mainElement := RTBox new color: (Color blue alpha: 0.3); elementOn: nil.
	firstGroup := (RTLabel new) elementsOn: #('Smalltalk' 'World').
	secondGroup := (RTBox new size: #yourself) elementsOn: #(30 40).
	bothGroups := RTGroup with: firstGroup with: secondGroup.
	"layouting"
	RTHorizontalLineLayout new gapSize: 1; alignLeft; on: firstGroup; on: secondGroup.
	RTVerticalLineLayout new gapSize: 1; alignLeft; on: bothGroups.
	RTNest new padding: 1; on: mainElement nest: firstGroup, secondGroup.
	mainWithNested := RTGroup with: mainElement with: bothGroups.
	mainWithNested @ RTDraggable.
	view add: mainWithNested.
	"define menu and their actions"
	originalExtent := mainElement extent.
	view addMenu: 'Smaller' 
		callback: [ view addAnimation: (RTResizeMove new 
													toExtent: mainElement extent * 0.6 
													during: 0.3 on: mainElement) ].
	view addMenu: 'Bigger' 
		callback: [ view addAnimation: (RTResizeMove new 
													toExtent: mainElement extent * (1 / 0.6) 
													during: 0.3 on: mainElement) ].
	view addMenu: 'Original' callback: [ mainElement extent: originalExtent. view signalUpdate ].
	view addMenu: 'Half' callback: [ mainElement extent: originalExtent / 2. view signalUpdate ].
	^ view open