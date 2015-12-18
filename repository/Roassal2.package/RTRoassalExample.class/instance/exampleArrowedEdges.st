sources
exampleArrowedEdges

| view els |
view := RTView new.
els := (RTBox new size: 10; color: Color blue; borderColor: Color veryLightGray) elementsOn: Collection withAllSubclasses.
els @ RTDraggable.
view addAll: els.
RTEdge
        buildEdgesFromObjects: Collection withAllSubclasses
        from: #yourself
        toAll: #subclasses
        using: ((RTLine new attachPoint: RTShorterDistanceAttachPoint new; color: Color veryDarkGray) + (RTSimpleArrowHead new attachPoint: RTShorterDistanceAttachPoint new; color: Color veryDarkGray))
        inView: view.

RTTreeLayout on: els.
view @ RTDraggableView.
	^ view