public
countries: countryNames color: aColor
	"Display a list of countries"
	countryNames do: [ :country |
		| elem |
		elem := (RTSVGPath new
			path: (RTSVGPath perform: country asSymbol);
			fillColor: aColor;
			scale: 1) elementOn:(country asString).
		elem @ RTPopup.
		view add: elem.
	].