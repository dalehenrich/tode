RTOpenStreeMapExample new installTitle: 'VerySimple' 
		code:
		'
	| v |
	v := RTView new.
	map := RTOSM new.
	e := map element.


	v add: e.

	paris := 48.8567 @ 2.3508.
	
	v @ RTDraggableView.
	
	v canvas camera translateTo: (map latLonToRoassal: paris).
	v canvas camera noInitializationWhenOpen.
self halt.
	^ v'
	