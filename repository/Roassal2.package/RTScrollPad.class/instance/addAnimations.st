as yet unclassified
addAnimations

	| bar surroundingRectangle margeRectangle |
	bar := self shapes bar.
	surroundingRectangle := self shapes surroundingRectangle.
	margeRectangle := self shapes margeRectangle.

	bar when: TRMouseDragging do: [ :evt |
		
		(self encompassingRectangle containsPoint: (self view canvas camera position)) ifFalse: [ (self view canvas camera) translateTo:  ((self encompassingRectangle) pointNearestTo: (self view canvas camera position))  ].
		
		(margeRectangle includesPoint: (bar position + evt step)) & (surroundingRectangle includesPoint: evt position) ifTrue: [  
			bar translateBy: evt step.
			self view canvas camera translateBy: (self translation: evt).
		].
		self view signalUpdate.
		].
	
	(self movable = #isMovable) ifTrue: [
		surroundingRectangle when: TRMouseDragging do: [ :evt |
			self shapes collection do: [ :s | s translateBy: (evt step) ].
			self view signalUpdate.
			]
		].
	
		
	self view when: TRMouseDragging do: [ :evt | 
		| translation |
		translation := (self reverseTranslation: evt).
		((margeRectangle includesPoint: (bar position + translation)) & ((self encompassingRectangle ) containsPoint: (self view canvas camera position))) ifTrue: [ 
			shapes bar translateBy: translation.
			self view signalUpdate
			]. 
		].
	
	self view elements do: [:e | e addCallback: (TRTranslationCallback new block: [
			self encompassingRectangleUpdate. self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate.])
		].	
	self view when: TRResizeCanvasEvent do: [ :evt | self signalUpdate].
	self view canvas camera addCallback: (TRCameraScaleCallback new block: [ self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate. ]).


	