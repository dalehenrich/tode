removing
testRemoving
	"
	self debug: #testRemoving
	"
	| v es |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 10).
	v addAll: es.
	es remove.
	self assert: v numberOfElements equals: 0.
	self assert: v canvas numberOfShapes equals: 0.