rendering
renderOn: trachelCanvas
	trachelShape isNil ifTrue: [ self error: 'Cannot add an element without a shape. Add a shape to myself, using + or addShape:' . ^ self ].
		
	"Trachel shape use the same announcer than myself"
	trachelShape announcer: self announcer.
	
	"Each trachel shape knows the element. Note that this is not a static dependency between Trachel and Roassal since in Trachel, this element could be any object"
	trachelShape element: self.

	"This ifTrue:ifFalse: is not great. However it simplifies the design"
	self isFixed
		ifTrue: [ trachelCanvas addFixedShape: trachelShape ]
		ifFalse: [ trachelCanvas addShape: trachelShape ].
