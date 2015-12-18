UI
drawAxis
	view canvas
		addShape:
			(TRLineShape new
				color: Color veryLightGray;
				from: 0 @ 0 to: 0 @ self chartTotalSize negated).
	view canvas
		addShape:
			(TRLineShape new
				color: Color veryLightGray;
				from: 0 @ 0 to: self chartTotalSize @ 0)