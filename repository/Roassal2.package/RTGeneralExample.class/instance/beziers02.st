beziers
beziers02
	"
	self new beziers02
	"

| v classes hierarchicalLinks depLinks dep |
v := RTView new.
classes := (RTEllipse new color: Color purple; size: 10) elementsOn: Collection withAllSubclasses.
classes @ RTDraggable @ RTPopup.
classes when: TRMouseEnter do: [ :evt | RTBlink outgoingEdgesOf: evt element ].
v addAll: classes.
hierarchicalLinks := RTEdge 
	buildEdgesFromObjects: Collection withAllSubclasses 
	from: #superclass to: #yourself 
	using: (RTLine new color: (Color white alpha: 0.2)) inView: v.

"A nice layout"
RTClusterLayout on: v elements edges: v edges.

"Computing dependencies"
dep := OrderedCollection new.
Collection withAllSubclasses do: [ :cls |
	cls rtmethods do: [ :cm | 
		((cm literals select: [ :l | l class  == Association and: [ l value notNil ] ]) collect: #value) do: [ :depClass | (cls ~~ depClass) ifTrue: [ dep add: cls -> depClass ] ] ]
].

"Add dependency edges"
depLinks := RTEdge 
	buildEdgesFromObjects: dep
	from: #key 
	to: #value 
	using: (RTBezierLine new 
					color: (Color blue alpha: 0.2);
					follow: #superclass) inView: v.


"Move the edges at the back"
depLinks do: [ :e | e trachelShape pushBack ].
hierarchicalLinks do: [ :e | e trachelShape pushBack ].

"Open the view"
v openWithMenu