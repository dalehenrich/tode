public - sticking
stick: aShape between: s1 and: s2 offset: aFloat
	"locate aShape between s1 and s2. aFloat is used to weight the extremities. 
		aFloat = 1.0 the label is on s1.
		aFloat = 0.0 the label is on s2"
	| callback b |
	self move: aShape between: s1 and: s2 offset: aFloat.
	
	b := [ :shape :step | self move: aShape between: s1 and: s2 offset: aFloat ].

	callback := TRTranslationCallback block: b.
	s1 addCallback: callback.
	s2 addCallback: callback.

	callback := TRExtentCallback block: b.
	s1 addCallback: callback.
	s2 addCallback: callback
