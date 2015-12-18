public
monthShapePath: cellSize
	^ RTSVGPath new 
		borderColor: Color black;
		path: [ :e | | month d w0 d0 d1 w1 csize t1 t2 |
			csize := cellSize asPoint.
			month := e model."an instance of Month".
			t1 := month asDate.
			t2 := Date newDay: month daysInMonth month: month name year: month year.
			d0 := t1 weekdayIndex - 1.
			d1 := t2 weekdayIndex - 1.
			w0 := 0.
			w1 := month weeks size-1.
			d := 'M', (d0 * cellSize) asString , ',' , ((w0 + 1) * cellSize) asString
     			, 'V' , (w0 * cellSize) asString , 'H' , (7 * cellSize) asString 
				, 'V' , (w1 * cellSize) asString , 'H' , ((d1 + 1) * cellSize) asString
				, 'V' , ((w1 + 1) * cellSize) asString , 'H 0'
     			, 'V' , ((w0 + 1) * cellSize) asString , 'Z'.
			d. ].