alignment
alignLine: aLine
	|distanceX distanceY fromX fromY|
	distanceX := canvas topLeft x negated + center x.
	distanceY := canvas topLeft y negated + center y.
	fromX := aLine from x + distanceX.
	fromY := aLine from y + distanceY.
	^(TRLineShape new from: fromX@fromY; to: (fromX + aLine to x) @ (fromY + aLine to y))
	