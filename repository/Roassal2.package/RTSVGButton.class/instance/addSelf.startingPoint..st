adding
addSelf: stream startingPoint: startingPoint
	|box width height converter|
	box := TRLabelShape new text: self fixedName; encompassingRectangle.
	 width := box width.
	height := box height.
	converter := RTSVGStringConverter new.
	stream
		nextPutAll: '<g onmouseup="button_',self fixedName,'(evt)" cursor="pointer">
  <text x="',(startingPoint x + (width /10) rounded) asString,'" y="',(startingPoint y + (3*height/4) rounded) asString,'">',(converter convertString: self getName),'</text>
  <rect x="',startingPoint x asString,'" y="',startingPoint y asString,'" rx="5" ry="5"
        width="',width asString,'" height="',height asString,'" style="fill-opacity:0;stroke:black;stroke-width:1"/>
</g>', String cr.
	^(startingPoint x + width + 5)@(startingPoint y)