examples
exampleRefugees
	"UNHCR data."

	"self exampleRefugees"

	| v map e tab countries |
	countries := RTOSM downloadCountries at: 'result'.
	tab := RTTabTable new input: RTOSM peopleForUNHCR usingDelimiter: $,.
	4 timesRepeat: [ tab removeFirstRow ].
	tab
		convertColumn: 3
		to: [ :value | 
			value = '*'
				ifTrue: [ 0 ]
				ifFalse: [ value asNumber ] ].
	v := RTView new.
	map := RTOSM new.
	e := map element.
	v add: e.
	((tab values reject: [ :row | row third < 1 ]) sorted: [ :a :b | a third > b third ])
		do: [ :row | 
			(countries detect: [ :each | '*' , (each at: 'name') , '*' match: row second ] ifNone: [  ])
				ifNotNil: [ :country | 
					| lat lon |
					lat := (country at: '/location/location/geolocation') first at: 'latitude'.
					lon := (country at: '/location/location/geolocation') first at: 'longitude'.
					v
						add:
							(((RTEllipse new
								width: (row third / Float pi) sqrt * 2;
								height: (row third / Float pi) sqrt * 2;
								color: (Color blue alpha: 0.3))
								elementOn:
									(Array with: (row second) with:
									(row third))) @ RTPopup translateTo: (map latLonToRoassal: lat @ lon)) ] ].
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView @ RTZoomableView.
	v open.
	v canvas camera focusOnCenterScaled