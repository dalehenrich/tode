labels
label
	"
	self new label
	"
	| v label els |
	v := RTView new.
	label := RTLabel new height: [ :e | e ].
	els := label elementsOn: (1 to: 30).
	v addAll: els.
	RTGridLayout on: els.
	v open