response actions
executeMenuAction: menuActionSelector
	| action |
	action := self clientElement
		executeMenuAction: menuActionSelector
		listIndex: self session selectedFrameIndex.
	^ self handleResponseActions: action