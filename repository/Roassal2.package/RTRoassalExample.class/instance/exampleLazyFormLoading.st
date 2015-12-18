sources
exampleLazyFormLoading
	"
	self new exampleLazyFormLoading
	"
"This example shows how to do lazy form loading. It is used to make Roassal use OpenStreetMap by loading tiles"

| forms v emptyForm s elements visibleInteraction |
forms := ColorForm allInstances select: [:f | f extent = (16 @ 16) ].

v := RTView new.
v @ RTDraggableView.

"We first create elements on an empty form"
emptyForm := ColorForm extent: 16 @ 16 depth: 32.
emptyForm fillColor: Color blue.
s := RTBitmap new
			form: emptyForm.
elements := s elementsOn: (1 to: forms size).

"We add all the elements to the view"
v addAll: elements.

"We define an interaction to capture the exact moment an element is visible or invisible"
visibleInteraction := RTVisible new.
visibleInteraction
	visibleBlock: [ :el | 
		Transcript show: 'refresh'; cr.
		el trachelShape form: (forms at: el model).
		el signalUpdate ].
elements @ visibleInteraction.
"We do the layout with a gap, for the purpose of the demo"
RTGridLayout new gapSize: 90; on: elements.

"To make sure if we drag and drop a form, the view get translated"
elements @ RTEventForwarder.


	^ v