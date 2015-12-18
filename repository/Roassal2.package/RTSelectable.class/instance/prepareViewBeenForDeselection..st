actions
prepareViewBeenForDeselection: aView
	"Make the view react when one click on the view. Element should be unselected"
	(self isViewBeenPreparedForDeselection: aView) 
		ifFalse: [
			aView when: TRMouseClick do: [ :evt | 
				aView elements do: [ :e | (self isSelected: e) ifTrue: [ self unselectNoCallback: e ] ].
				self evaluateCallback: RTGroup new.
				aView signalUpdate ] ]