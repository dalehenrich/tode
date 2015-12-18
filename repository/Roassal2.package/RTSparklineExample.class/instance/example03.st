examples
example03
	"
	self new example03
	"

	| v e shape |
	v := RTView new.
	shape := RTSparkline new 
					width: 50;
					height: 50;
					values: ((1 to: 20) collect: #atRandom).
	e := shape element.
	e @ RTDraggable.
	v add: e.
	v add: (RTEllipse new color: (Color red alpha: 0.4); size: 5) element.
	
	v setDefaultMenu.
	v open