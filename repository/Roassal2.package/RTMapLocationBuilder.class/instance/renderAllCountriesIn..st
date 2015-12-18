utility
renderAllCountriesIn: aView
	| el shape |
	RTSVGPath countries
		do: [ :name | 
			shape := RTSVGPath new path: (RTSVGPath perform: name).
			shape borderColor: Color lightGray.
			el := shape elementOn: name asString.
			el @ RTPopup.
			aView add: el ]