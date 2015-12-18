composite
testBoxTransformation

	| canvas box |
	canvas := TRCanvas new.
	box := TRBoxShape new size: 10.
	canvas addShape: box.
	"regular rectangle"
	self assert: box position equals: 0 @ 0.
	self assert: box encompassingRectangle equals: (-5 @ -5 corner: 5 @ 5).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: 10.
	self assert: box height equals: 10.
	self assert: box extent equals: 10 @ 10.
	self assert: (box includesPoint: 0 @ 0).
	self deny: (box includesPoint: 10 @ 10).
	"translated rectangle"
	box translateTo: 10@10.
	self assert: box position equals: 10 @ 10.
	self assert: box encompassingRectangle equals: (5 @ 5 corner: 15 @ 15).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: box encompassingRectangle width.
	self assert: box height equals: box encompassingRectangle height.
	self assert: box extent equals: box encompassingRectangle extent.
	self assert: (box includesPoint: 5 @ 5).
	self deny: (box includesPoint: 4 @ 10).
	"rotated rectangle"
	box rotateByDegrees: 45.
	self assert: box position equals: 10 @ 10.
	self assert: box encompassingRectangle rounded equals: (3 @ 3 corner: 17 @ 17).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: box encompassingRectangle width.
	self assert: box height equals: box encompassingRectangle height.
	self assert: box extent equals: box encompassingRectangle extent.
	self assert: (box includesPoint: 10 @ 4).
	self deny: (box includesPoint: 6 @ 6).
	"scaled rectangle"
	box scaleBy: 2.
	self assert: box position equals: 10 @ 10.
	self assert: box encompassingRectangle rounded equals: (-4 @ -4 corner: 24 @ 24).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: box encompassingRectangle width.
	self assert: box height equals: box encompassingRectangle height.
	self assert: box extent equals: box encompassingRectangle extent.
	self assert: (box includesPoint: 10 @ -3).
	self deny: (box includesPoint: 0 @ 0).
	"translated rectangle"
	box translateTo: 20 @ 20.
	self assert: box position equals: 20 @ 20.
	self assert: box encompassingRectangle rounded equals: (6 @ 6 corner: 34 @ 34).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: box encompassingRectangle width.
	self assert: box height equals: box encompassingRectangle height.
	self assert: box extent equals: box encompassingRectangle extent.
	self assert: (box includesPoint: 20 @ 7).
	self deny: (box includesPoint: 10 @ 10).
	"back to regular rectangle"
	box rotateByDegrees: -45.
	box scaleBy: 0.5.
	self assert: box position equals: 20 @ 20.
	self assert: box encompassingRectangle equals: (15 @ 15 corner: 25 @ 25).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: box encompassingRectangle width.
	self assert: box height equals: box encompassingRectangle height.
	self assert: box extent equals: box encompassingRectangle extent.
	self assert: (box includesPoint: 16 @ 16).
	self deny: (box includesPoint: 10 @ 10).
	"set width"
	box width: 20.
	self assert: box position equals: 20 @ 20.
	self assert: box encompassingRectangle rounded equals: (10 @ 15 corner: 30 @ 25).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: 20.
	self assert: box height equals: 10.
	self assert: box extent equals: 20 @ 10.
	"set height"
	box height: 20.
	self assert: box position equals: 20 @ 20.
	self assert: box encompassingRectangle rounded equals: (10 @ 10 corner: 30 @ 30).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: 20.
	self assert: box height equals: 20.
	self assert: box extent equals: 20 @ 20.
	"set extent"
	box extent: 30 @ 30.
	self assert: box position equals: 20 @ 20.
	self assert: box encompassingRectangle rounded equals: (5 @ 5 corner: 35 @ 35).
	self assert: box encompassingRectangle center equals: box position.
	self assert: box width equals: 30.
	self assert: box height equals: 30.
	self assert: box extent equals: 30 @ 30.
