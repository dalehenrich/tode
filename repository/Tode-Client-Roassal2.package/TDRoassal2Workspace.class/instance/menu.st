as yet unclassified
"protocol: as yet unclassified"
menu
	| toolsElements view shape cut col |
	"We clean the view end display the menu, you can define a roassal tool as a subclass of RTAbstractTool"
	
	view := self rtView.
	view cleanAll.
	self setBackground.
	
	cut := ((view canvas extent y) / (tools size)).
	
	col:= ((Color fromHexString: '2F4E6F') alpha: 0).
	
	shape := ((RTBox new width: (view canvas extent x); height: cut; color: col; borderColor: (Color white alpha: 0)) + (RTLabel new color: (Color white); text: [:m | m label])). 
	
	toolsElements := tools collect: [:t | (shape elementOn: t) @ (RTHighlightable new highlightedColor: ((LinearGradientPaint new start: 0@(cut negated ); stop: 0@(cut *3); colorRamp: {0 -> (col alpha: 1).
1 -> (Color white)})))].
		
	view addAll: toolsElements.
	self setPositionTo: toolsElements in: view.
	
	toolsElements do: [:e | 
		e when: TRMouseClick do: [:evt |
			e model displayTool.
		]
	].
	
	view when: TRResizeCanvasEvent do: [ :evt |
		self setPositionTo: toolsElements in: view. 
		self updateShapesOf: toolsElements.
		view canvas camera focusOnCenter.
		view signalUpdate.
		].
	
	view canvas camera focusOnCenter.
	view signalUpdate.
	

