composite
testEllipseTransformation

	| canvas ellipse |
	canvas := TRCanvas new.
	ellipse := TREllipseShape new size: 10.
	canvas addShape: ellipse.
	"regular rectangle"
	self assert: ellipse position equals: 0 @ 0.
	self assert: ellipse encompassingRectangle equals: (-5 @ -5 corner: 5 @ 5).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: 10.
	self assert: ellipse height equals: 10.
	self assert: ellipse extent equals: 10 @ 10.
	self assert: (ellipse includesPoint: 0 @ 0).
	self deny: (ellipse includesPoint: 10 @ 10).
	"translated rectangle"
	ellipse translateTo: 10@10.
	self assert: ellipse position equals: 10 @ 10.
	self assert: ellipse encompassingRectangle equals: (5 @ 5 corner: 15 @ 15).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: ellipse encompassingRectangle width.
	self assert: ellipse height equals: ellipse encompassingRectangle height.
	self assert: ellipse extent equals: ellipse encompassingRectangle extent.
	self assert: (ellipse includesPoint: 7 @ 7).
	self deny: (ellipse includesPoint: 4 @ 10).
	"rotated rectangle"
	ellipse rotateByDegrees: 45.
	self assert: ellipse position equals: 10 @ 10.
	self assert: ellipse encompassingRectangle rounded equals: (3 @ 3 corner: 17 @ 17).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: ellipse encompassingRectangle width.
	self assert: ellipse height equals: ellipse encompassingRectangle height.
	self assert: ellipse extent equals: ellipse encompassingRectangle extent.
	self assert: (ellipse includesPoint: 10 @ 7).
	self deny: (ellipse includesPoint: 6 @ 6).
	"scaled rectangle"
	ellipse scaleBy: 2.
	self assert: ellipse position equals: 10 @ 10.
	self assert: ellipse encompassingRectangle rounded equals: (-4 @ -4 corner: 24 @ 24).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: ellipse encompassingRectangle width.
	self assert: ellipse height equals: ellipse encompassingRectangle height.
	self assert: ellipse extent equals: ellipse encompassingRectangle extent.
	self assert: (ellipse includesPoint: 10 @ 0).
	self deny: (ellipse includesPoint: 0 @ 0).
	"translated rectangle"
	ellipse translateTo: 20 @ 20.
	self assert: ellipse position equals: 20 @ 20.
	self assert: ellipse encompassingRectangle rounded equals: (6 @ 6 corner: 34 @ 34).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: ellipse encompassingRectangle width.
	self assert: ellipse height equals: ellipse encompassingRectangle height.
	self assert: ellipse extent equals: ellipse encompassingRectangle extent.
	self assert: (ellipse includesPoint: 20 @ 14).
	self deny: (ellipse includesPoint: 10 @ 10).
	"back to regular rectangle"
	ellipse rotateByDegrees: -45.
	ellipse scaleBy: 0.5.
	self assert: ellipse position equals: 20 @ 20.
	self assert: ellipse encompassingRectangle equals: (15 @ 15 corner: 25 @ 25).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: ellipse encompassingRectangle width.
	self assert: ellipse height equals: ellipse encompassingRectangle height.
	self assert: ellipse extent equals: ellipse encompassingRectangle extent.
	self assert: (ellipse includesPoint: 17 @ 17).
	self deny: (ellipse includesPoint: 10 @ 10).
	"set width"
	ellipse width: 20.
	self assert: ellipse position equals: 20 @ 20.
	self assert: ellipse encompassingRectangle rounded equals: (10 @ 15 corner: 30 @ 25).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: 20.
	self assert: ellipse height equals: 10.
	self assert: ellipse extent equals: 20 @ 10.
	"set height"
	ellipse height: 20.
	self assert: ellipse position equals: 20 @ 20.
	self assert: ellipse encompassingRectangle rounded equals: (10 @ 10 corner: 30 @ 30).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: 20.
	self assert: ellipse height equals: 20.
	self assert: ellipse extent equals: 20 @ 20.
	"set extent"
	ellipse extent: 30 @ 30.
	self assert: ellipse position equals: 20 @ 20.
	self assert: ellipse encompassingRectangle rounded equals: (5 @ 5 corner: 35 @ 35).
	self assert: ellipse encompassingRectangle center equals: ellipse position.
	self assert: ellipse width equals: 30.
	self assert: ellipse height equals: 30.
	self assert: ellipse extent equals: 30 @ 30.
