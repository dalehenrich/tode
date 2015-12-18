sources
exampleCollectionSubclasses

| b |
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	b angularSpacing: 1.
	b radialSpacing: 5.
	b shape current 
				colorElement: [ :el | el model subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].

	b explore: Collection using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view