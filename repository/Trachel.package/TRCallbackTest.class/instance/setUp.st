running
setUp

	canvas := TRCanvas new.
	rectangle1 := (20@20) corner: 150@100.
	circle1 := canvas buildCircleFrom: rectangle1 origin 
							to: rectangle1 corner color: (Color green alpha: 0.1).
	circle2 := canvas buildCircleFrom: 200 @ 200 to: 240 @ 230 color: (Color blue alpha: 0.1).	