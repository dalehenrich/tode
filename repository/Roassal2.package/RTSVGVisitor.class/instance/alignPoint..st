alignment
alignPoint: aPoint
	|distanceX distanceY originX originY|
	distanceX := canvas topLeft x negated + center x.
	distanceY := canvas topLeft y negated + center y.
	originX := aPoint x + distanceX.
	originY := aPoint y + distanceY.
	^originX@originY
	