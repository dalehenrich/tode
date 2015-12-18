as yet unclassified
displayToolContent
	| help shape col |
	help := RTGroup new.
	
	self workspace setBackground.
	
	col:= ((Color fromHexString: '2F4E6F') alpha: 0).

	shape := ((RTBox new width:300; height:70; color: (col); borderColor: (Color white)) + (RTLabel new color: (Color white); text: [:m | m key])). 
	
	help add: (shape elementOn: ('On the roassal workspace:' -> {('shell onServerDo: [Gemstone expression]'). ('shell onServerDo: [ 1 +1 inspect ]')})).
	help add: (shape elementOn: ('Get an object oop' -> {('shell onServerDo: [MyObject asOop]'). ('shell onServerDo: [UserProfile asOop]')})).
	help add: (shape elementOn: ('Inspect object from Oop' -> {('shell onServerDo: [ (Object _objectForOop: oop) inspect]'). ('shell onServerDo: [ (Object _objectForOop: 154679809) inspect]')})).
	help add: (shape elementOn: ('List class methods' -> {('shell onServerDo: [MyClass selectors]') .('shell onServerDo: [UserProfile selectors]')})).
	help add: (shape elementOn: ('Read method source code' -> {('shell onServerDo: [MyClass sourceCodeAt: MyMethod]'). ('shell onServerDo: [UserProfile sourceCodeAt: userId]')})).
	
	self view 	addAll: help.
	
	help do: [:h | h @ (RTHighlightable new highlightedColor: ((LinearGradientPaint new start: 50@0; stop: 50@50; colorRamp:  {0 -> (col alpha: 1). 1 -> (Color white)})))].
	
	RTFlowLayout new maxWidth: 700; gapSize: 10; applyOn: help.
	
	help translateBy: (self view canvas extent x /4)@(self view canvas extent y /3).
	help @ (RTPopup new text: [:m | m value first]).
	
	help do: [:h | h when: TRMouseClick do: [:evt |
		self workspace contents: (self workspace contents, String cr, h model value second, '.')	
			]
		].

