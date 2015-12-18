hooks
renderCountries: aView
	| el name countryElems |
	countryElems := OrderedCollection new.
	countries do: [ :o |
		name := countryNames rtValue: o.
		el := (RTSVGPath new
			path: (RTSVGPath perform: name asSymbol);
			fillColor: (color isNil ifTrue: [nil]
				ifFalse: [ color rtValue: o ]);
			borderWidth: 0.5;
			scale: scale)
			element model: o.
			popup isNotNil ifTrue: [ el @ (RTPopup text: popup) ].
		countryElems add: el.
		aView add: el.
	].
	^ countryElems