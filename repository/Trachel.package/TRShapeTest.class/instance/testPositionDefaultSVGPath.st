position
testPositionDefaultSVGPath
	| svg rectangle |
	svg := TRSVGPath new path: 'M 0 0 L 30 10 L 20 30 z'.
	rectangle := (Rectangle encompassing: (Array with: 0@0 with: 30@10 with: 20@30)).
	self assert: svg position equals: (0 @ 0).
	self assert: svg center equals: rectangle center.
	self deny: svg position = rectangle center.