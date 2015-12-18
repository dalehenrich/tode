as yet unclassified
signalUpdate
	
	"this method is used to increase the size of the shapes composing the scroll bar when the size is defined by a Block, for example to follow the size of the windows
	Or if the position is fixed on the border on the widows, the scroll bar should follow the windows border at signal updates"

	self assert: (self shapes isNotNil).

	(self shapes collection) ifNotEmpty: [ 

		(self fixedPositionBlock isBlock) ifTrue: [ 
			self signalUpdatePosition.				
			].
	
		(self sizeBlock isBlock) ifTrue: [  
			self signalUpdateSize.
			] ifFalse: [ 
				(self orientation = #horizontal) ifTrue: [
						self positionOnBorderHorizontal.
					] ifFalse: [ 
						self positionOnBorderVertical.
					 ]
				]
			 ].
	self view signalUpdate. 
	