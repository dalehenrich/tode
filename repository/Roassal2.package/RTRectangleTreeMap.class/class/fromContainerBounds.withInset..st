instance initialization
fromContainerBounds: aRectangle withInset: anInteger
	| treeRectangle relativeOrigin relativeCorner |
	treeRectangle := self new.
	treeRectangle inset: anInteger.
	relativeOrigin := aRectangle origin-(aRectangle extent/2).
	relativeCorner := aRectangle corner- (aRectangle extent /2).
	((aRectangle width < (anInteger * 2)) or: [ aRectangle height < (anInteger * 2) ])
		ifTrue: [ treeRectangle origin: relativeOrigin; corner: relativeCorner.]
		ifFalse: [ 
			treeRectangle origin: relativeOrigin +anInteger; 
			corner: relativeCorner -anInteger   ].
	^ treeRectangle 