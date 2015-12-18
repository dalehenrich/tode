event handling
mouseDown: evt

	eventBeginingDragging ifNil: [
		evt hand 
					waitForClicksOrDrag: self 
					event: evt 
					selectors: { #rtMouseClick:. #rtMouseDoubleClick:. nil. #rtMouseDragBegin: }
					threshold: 5.
		^ self ].
	
	evt anyButtonPressed ifTrue: [
		self rtMouseDragging: evt.
	].
	evt wasHandled: true.
	^ true