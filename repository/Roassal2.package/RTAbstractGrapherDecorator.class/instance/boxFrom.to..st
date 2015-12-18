utility
boxFrom: fromPoint to: toPoint
	| l ext |
	ext := fromPoint corner: toPoint.
	l := (RTBox new width: ext width abs; height: ext height abs; color: (Color blue alpha: 0.3)) element.
	l translateTo: ext center.
	builder view add: l.
	^ l