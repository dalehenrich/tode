adding
addPath: stream
	| p1 sweepFlag end aAngle p2 start alpha beta bAngle |
	alpha := self makePositive: self alphaAngle.
	beta := self makePositive: self betaAngle.
	alpha > beta
		ifTrue: [ sweepFlag := 1 ]
		ifFalse: [ sweepFlag := 0 ].
	aAngle := self toRadian: alpha.
	bAngle := self toRadian: beta.
	start := self getPointFrom: self center angle: aAngle radius: self innerRadius.
	end := self getPointFrom: self center angle: bAngle radius: self innerRadius.
	p1 := self getPointFrom: self center angle: aAngle radius: self outterRadius.
	p2 := self getPointFrom: self center angle: bAngle radius: self outterRadius.
	stream
		nextPutAll: ('d="M<1p>,<2p> ' expandMacrosWith: start x with: start y);
		nextPutAll: ('L<1p>,<2p> ' expandMacrosWith: p1 x with: p1 y);
		nextPutAll: ('A<1p>,<2p> 0 <3p>,1 ' expandMacrosWith: self outterRadius with: self outterRadius with: sweepFlag);
		nextPutAll: ('<1p>,<2p> ' expandMacrosWith: p2 x with: p2 y);
		nextPutAll: ('L<1p>,<2p> ' expandMacrosWith: end x with: end y);
		nextPutAll: ('A<1p>,<2p> 0 <3p>,0 ' expandMacrosWith: self innerRadius with: self innerRadius with: sweepFlag);
		nextPutAll: ('<1p>,<2p>z" ' expandMacrosWith: start x with: start y)