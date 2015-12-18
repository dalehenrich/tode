alignment
alignRectangle: aRectangle
	|distanceX distanceY originX originY|
	distanceX := canvas topLeft x negated + center x.
	distanceY := canvas topLeft y negated + center y.
	originX := aRectangle topLeft x + distanceX.
	originY := aRectangle topLeft y + distanceY.
	^Rectangle origin: originX@originY corner: (originX + aRectangle width) @ (originY + aRectangle height)
	