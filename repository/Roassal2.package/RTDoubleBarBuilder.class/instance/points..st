public-accessing
points: someObjects
	elements := self createPointNameFrom: someObjects.
	view addAll: elements.
	RTVerticalLineLayout new
		verticalGap: verticalGap;
		alignRight;
		on: elements.
	topExtremity := (RTBox new size: 0) element.
	bottomExtremity := (RTBox new size: 0) element.
	TRConstraint move: topExtremity onTheRightOf: elements first.
	TRConstraint move: bottomExtremity onTheRightOf: elements last.
	topExtremity translateBy: 0 @ -15.
	bottomExtremity translateBy: 0 @ 15.
	view add: topExtremity.
	view add: bottomExtremity.
	view add: ((RTLine new color: Color red) edgeFrom: topExtremity to: bottomExtremity)