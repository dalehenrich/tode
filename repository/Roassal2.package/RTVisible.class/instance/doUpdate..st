utility
doUpdate: element
	| isVisible |
	isVisible := element trachelShape isVisible.
	isVisible ~= (element attributeAt: #isVisible)
		ifTrue: [ 
			isVisible
				ifTrue: [ self doVisibleBlockOn: element ]
				ifFalse: [ self doInvisibleBlockOn: element ].
			element attributeAt: #isVisible put: isVisible ].
	