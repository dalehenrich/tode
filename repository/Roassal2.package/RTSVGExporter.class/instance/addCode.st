svg
addCode
	| lines hightStart step|
	code ifNil: [ ^self ].
	lines := code lines allButFirst.
	step := (TRLabelShape new
					text: lines first;
						encompassingRectangle) height.
	hightStart := (step / 2) rounded. 
	stream
		nextPutAll:
				'<rect  x="',canvasWidth asString,'" y="',0 asString,'" width="',((3*(finalWidth - canvasWidth)/4) rounded) asString,'" height="',finalHeight asString,'" fill="rgb(192,192,192)" />' , String cr.
	lines do: [ :l |  
		stream
			nextPutAll: String cr,'<text x="',(canvasWidth + 5) asString,'" y="',hightStart asString,'" font-size="12"><tspan font-family = "Arial, Helvetica, sans-serif" xml:space="preserve">',l,'</tspan></text>'.
		hightStart := hightStart + step]