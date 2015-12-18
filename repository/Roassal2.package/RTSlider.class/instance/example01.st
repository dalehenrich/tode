examples
example01

	| v label slider |
	v := RTView new.
	label := RTLabel elementOn: 0.
	v add: label.
	
	slider := RTSlider new.
	slider view: v.
	slider labelled.
	slider callback: [ :aValue | label model: aValue * 100. label updateShape ].
	slider moveBelow.
	slider build.
	
	v
	 