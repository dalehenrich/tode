as yet unclassified
rtView
	rtView
		ifNil: [ 
			rtView := RTView new @RTDraggableView.
			bindings ifNil: [ self initializeBindings ].
			bindings at: 'view' put: rtView ].
	^ rtView