public - moving
move: aShape onTheTopLeftOf: anotherShape withWidthPadding: widthPadding withHeightPadding: heightPadding
	| rectangle |
	rectangle := anotherShape encompassingRectangle topLeft.
	^ aShape translateTo: ((rectangle x + (aShape width/2) + widthPadding)@(rectangle y + (aShape height/2) + heightPadding))