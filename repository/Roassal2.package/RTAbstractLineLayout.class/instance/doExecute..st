hook
doExecute: elements 
	| pointer delta |
	horizontallyStretchable ifTrue: 
		[ self doStretchHorizontal: elements ].
	verticallyStretchable ifTrue: 
		[ self doStretchVertical: elements ].
	pointer := self positionOriginalPointer: elements.

	elements do: 
		[ :element |
		delta := self deltaFor: element.
		translator translateTopLeftOf: element to: pointer - delta.
		pointer := self 
					movePointer: pointer
					accordingToFigure: element.
		self step ].