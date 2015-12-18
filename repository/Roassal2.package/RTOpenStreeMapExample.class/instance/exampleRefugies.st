sources
exampleRefugies

	| v map e tab countries interestingRows |
	"Data extracted from http://popstats.unhcr.org/PSQ_POC.aspx"
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
	
	"We are interested in countries that have at least one refugy and we reverse-sort the countries according to the number of refugies they have. This help in case of element overlap of elements"
	interestingRows := (tab values reject: [ :row | row third < 1 ]) sorted: [ :a :b | a third > b third ].
	interestingRows
		do: [ :row | 
			(countries detect: [ :each | '*' , (each at: 'name') , '*' match: row second ] ifNone: [  ])
				ifNotNil: [ :country | 
					| lat lon dict |
					dict := (country at: '/location/location/geolocation') first.
					lat := dict at: 'latitude'.
					lon := dict at: 'longitude'.
					v
						add:
							(((RTEllipse new
								width: (row third / Float pi) sqrt * 2;
								height: (row third / Float pi) sqrt * 2;
								color: (Color blue alpha: 0.3))
								elementOn:
									(Array with: (row second) with:
									(row third))) @ RTPopup translateTo: (map latLonToRoassal: lat @ lon)) ] ].

	v @ RTDraggableView @ RTZoomableView.

	^ v