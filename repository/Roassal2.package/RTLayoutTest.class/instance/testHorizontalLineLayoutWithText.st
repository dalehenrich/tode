tests
testHorizontalLineLayoutWithText
	| elHello elWorld elHelloWidth elWorldWidth |
	view := RTView new.
	view addAll: (RTLabel elementsOn: #('hola ' 'mundo') ).
	self assert: view elements size = 2.
	elHello := view elementFromModel: 'hola '.
	elWorld := view elementFromModel: 'mundo'.
	elHelloWidth := elHello width.
	elWorldWidth := elWorld width.
	RTHorizontalLineLayout new gapSize: 0; on: view elements.
	"view open."
	
	self assert: elHello width = elHelloWidth.
	self assert: elWorld width = elWorldWidth.
	self assert: elHello encompassingRectangle width = elHelloWidth.
	self assert: elWorld encompassingRectangle width = elWorldWidth.
	
	self assert: elHello encompassingRectangle top = elWorld encompassingRectangle top.
	self assert: elHello encompassingRectangle bottom = elWorld encompassingRectangle bottom.
	self deny: elHello encompassingRectangle right > elWorld encompassingRectangle left.
