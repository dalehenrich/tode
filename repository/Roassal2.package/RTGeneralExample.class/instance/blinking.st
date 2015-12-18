animations
blinking
	"
	self new blinking
	"
	| view el |
	view := RTView new.
	el := (RTBox new size: 100) element.
	view add: el.
	el when: TRMouseClick do: [ :evt | RTBlink on: el in: view ].
	view open.
	