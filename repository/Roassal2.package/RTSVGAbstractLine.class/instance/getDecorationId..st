utils
getDecorationId: aLineDecorationShape
	|t w c s lw|
	t := aLineDecorationShape type.
	w := aLineDecorationShape mySize.
	c := aLineDecorationShape color.
	s := aLineDecorationShape strokePaint.
	lw := aLineDecorationShape width.
	^(t asString, w asString, ((c red * 256) + (s red * 256)) rounded asString, ((c green * 256) + (s green * 256)) rounded asString, ((c blue * 256) + (s blue * 256)) rounded asString, lw asString)
	