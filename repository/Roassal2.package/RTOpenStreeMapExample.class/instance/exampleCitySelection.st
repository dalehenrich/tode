sources
exampleCitySelection

| v map e movingCamera mb |
v := RTView new.
map := RTOSM new.
e := map element.

v add: e.

v @ RTDraggableView.

movingCamera := [ :locationLatLong |
	v canvas camera translateTo: 
		(map latLonToRoassal: locationLatLong). 
	v signalUpdate ].
 
mb := RTMenuBuilder new.
mb view: v.
mb menu: 'Paris' callback: [ movingCamera value: 48.8567 @ 2.3508 ].
mb menu: 'London' callback: [ movingCamera value: 51.50722 @ -0.12750 ].
mb menu: 'NewYork' callback: [ movingCamera value: 40.7127 @ -74.0059 ].
mb build.

	^ v