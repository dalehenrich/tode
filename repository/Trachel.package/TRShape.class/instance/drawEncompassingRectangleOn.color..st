drawing
drawEncompassingRectangleOn: athensCanvas color: aColor
	"debugging purpose"
 	| r tpath |
	r := self encompassingRectangle.
	tpath := athensCanvas
				createPath: [ :builder | 
					builder absolute; moveTo: r topLeft; lineTo: r topRight; 
							lineTo: r bottomRight; lineTo: r bottomLeft; lineTo: r topLeft ].
	athensCanvas pathTransform
		restoreAfter: [ 
			athensCanvas
				setPaint: aColor;
				drawShape: tpath ].