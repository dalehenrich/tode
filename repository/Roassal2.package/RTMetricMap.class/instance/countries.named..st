adding
countries: collection named: selectorOrBlockForName
	"Display a list of countries"
	"E.g., countries: #(#('France' 50) #('Germany' 80)) named: #first"
	collection do: [ :country |
		| elem |
		elem := (RTSVGPath new
			path: (RTSVGPath perform: (selectorOrBlockForName rtValue: country) asSymbol);
			fillColor: Color random;
			scale: 1) elementOn: (country asString).
		elem @ RTPopup.
		view add: elem.
	].