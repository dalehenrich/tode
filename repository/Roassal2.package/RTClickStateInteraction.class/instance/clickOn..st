actions
clickOn: element
	(self isSelected: element)
		ifTrue: [ 
			self markAsUnselected: element.
			self unselect: element ]
		ifFalse: [ 
			self markASelected: element.
			self select: element ]