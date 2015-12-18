as yet unclassified
addAnimations
	"add animations on the bar, to make the scroll bar movable or not etc.."
	| bar start stop surroundingRectangle margeRectangle |

	bar := self shapes bar.
	start := self shapes start.
	stop := self shapes stop.
	surroundingRectangle := self shapes surroundingRectangle.
	margeRectangle := self shapes margeRectangle.


	(self orientation = #horizontal) ifTrue: [ 
		bar when: TRMouseDragging do: [ :evt |
			
			(self encompassingRectangle containsPoint: (self view canvas camera position)) ifFalse: [ (self view canvas camera) translateTo:  ((self encompassingRectangle) pointNearestTo: (self view canvas camera position))  ].
			
			(margeRectangle includesPoint: (bar position + ((evt step x)@0))) & (surroundingRectangle includesPoint: (evt position x)@(bar position y)) ifTrue: [  
				bar translateBy: (evt step x)@0.
				self view canvas camera translateBy: (self translationHorizontal: evt).
				].
			self view signalUpdate.
			]
		].

	(self orientation = #vertical) ifTrue: [ 
		bar when: TRMouseDragging do: [ :evt |
			
			(self encompassingRectangle containsPoint: (self view canvas camera position)) ifFalse: [ (self view canvas camera) translateTo:  ((self encompassingRectangle) pointNearestTo: (self view canvas camera position))  ].
			
			(margeRectangle includesPoint: (bar position + (0@(evt step y)))) & (surroundingRectangle includesPoint: (bar position x)@(evt position y)) ifTrue: [  
				bar translateBy: 0@(evt step y).
				self view canvas camera translateBy: (self translationVertical: evt).
				].
			self view signalUpdate.
			]
		].
	
	(self movable = #isMovable) ifTrue: [
		surroundingRectangle when: TRMouseDragging do: [ :evt |
			self shapes collection do: [ :s | s translateBy: (evt step) ].
			self view signalUpdate.
			]
		].
	
	self view when: TRMouseDragging do: [ :evt | 
		| translation |

			(self orientation = #horizontal) ifTrue: [
				translation := (self reverseTranslationHorizontal: evt).
				].
			(self orientation = #vertical) ifTrue: [
				translation := (self reverseTranslationVertical: evt).
				].
			((margeRectangle includesPoint: (bar position + translation))) ifTrue: [ 
				shapes bar translateBy: translation.
				self view signalUpdate
			]. 
		].
	
	self view elements do: [:e | e addCallback: (TRTranslationCallback new block: [
			self encompassingRectangleUpdate. self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate.])
		].
	
	self view when: TRResizeCanvasEvent do: [ :evt | self signalUpdate].
	
	self view canvas camera addCallback: (TRCameraScaleCallback new block: [ self encompassingRectangleFromSpaceToPixelUpdate. self signalUpdate. ]).



	