adding
addEventHandlers: aStream id: aString element: aRTElement center: aPoint
	|rText xOverflow yOverflow x y converter|
	rText := (self text value: aRTElement model) asString.
	x := aPoint x.
	y := aPoint y.
	xOverflow := aPoint x - bounds width + ((TRPlatform current familyName: self font size: self fontSize)  widthOfString: rText).
	yOverflow := aPoint y - bounds height + self fontSize.
	xOverflow >= 0 ifTrue: [ x:= x - xOverflow ].
	yOverflow >= 0 ifTrue: [ y:= y - yOverflow ].
	converter := RTSVGStringConverter new.
	aStream
		nextPutAll: String cr,'<text id="',aString,'pop" x="',x asString,'" y="',y asString,'" font-size="',self fontSize asString,'" style="fill:',self color asHTMLColor,'" visibility="hidden"><tspan font-family = "',self font,'">',(converter convertString: rText),(self mouseAction: aString),'</tspan></text>'