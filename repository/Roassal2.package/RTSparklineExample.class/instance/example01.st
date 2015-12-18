examples
example01
	"
	self new example01
	"

	| v es |
	v := RTView new.
	es := (RTSparkline new 
				width: 50; height: 30;
				values: [ :cls | cls rtmethods collect: #numberOfLinesOfCode ]) elementsOn:  (Array with: RTShape with: RTBox ).
	es @ RTDraggable @ RTPopup.
	v addAll: es.
	RTHorizontalLineLayout on: es.
	v setDefaultMenu.
	^ v