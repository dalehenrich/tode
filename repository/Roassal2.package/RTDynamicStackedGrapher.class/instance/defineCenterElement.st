hooks
defineCenterElement
	"We keep an element to 0 @ 0 because this is useful when the dynamic stacked grapher has to be composed with other"
	centerElement ifNotNil: [ ^ self ].
	centerElement := (RTBox new size: 1) elementOn: 'center'.
	centerElement translateTo: 0 @ 0.
	view add: centerElement