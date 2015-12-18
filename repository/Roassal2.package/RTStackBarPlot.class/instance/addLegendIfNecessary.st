private - utility
addLegendIfNecessary
	| l c |
	legend ifNil: [ ^ self ].
	
	l := RTLegendBuilder new.
	l right.
	l view: view.
"	l addText: title."
	1 to: self numberOfValuesPerRow do: [ :index |
		c := self colorPalette level: (index / self numberOfValuesPerRow).
		l addColor: c text: (legend at: index).
	].
	l build.