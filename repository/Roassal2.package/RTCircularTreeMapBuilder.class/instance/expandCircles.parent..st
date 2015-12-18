layout
expandCircles: e parent: parent
	"
	RTCircularTreeMapExample new example01
	"
	| cc |
	self expandCircle: e with: parent.
	(e attributes includesKey: #children) ifFalse: [ ^ self ].
	(e attributes at: #children) do: [ :child | 
		(child attributes includesKey: #circle) ifTrue: [ 
			cc := self relToAbsCircle: (child attributes at: #circle) parent: parent.
			self expandCircles: child parent: cc ] ].