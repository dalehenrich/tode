animations
shrinking
	"
	self new shrinking
	"
| e v |
v := RTView new.
e := (RTBox new color: Color green; width: 150; height: 120) element.
v add: e.

e when: TRMouseClick do: [ :evt |
	| anim |
	anim := RTResizeMove new toExtent: (50 @ 30) on: e.
	anim after: [ 
		| el |
		el := RTLabel elementOn: 'hello'.
		v add: el.
		RTNest new on: e nest: (Array with: el). e trachelShape signalUpdate ].
	v addAnimation: anim.
].
e @ RTDraggable.
v open