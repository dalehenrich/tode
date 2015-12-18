tests
testHorizontalLineLayoutWithBox
	| models elHello elWorld elHelloWidth elWorldWidth |
	view := RTView new.
	models := #(50 150 ).
	view addAll: (RTBox new color: (Color blue alpha: 0.2); size: #yourself; elementsOn: models).
	self assert: view elements size = 2.
	elHello := view elementFromModel: models first.
	elWorld := view elementFromModel: models second.
	elHelloWidth := elHello width.
	elWorldWidth := elWorld width.
	RTHorizontalLineLayout new gapSize: 0; on: view elements.
	"view open."
	
	self assert: elHello width = elHelloWidth.
	self assert: elWorld width = elWorldWidth.
	self assert: elHello encompassingRectangle width = elHelloWidth.
	self assert: elWorld encompassingRectangle width = elWorldWidth.
	
	self assert: elHello encompassingRectangle top = elWorld encompassingRectangle top.
	self assert: elHello encompassingRectangle right <= elWorld encompassingRectangle left.
