private
fillViewWithCountries: collection named: selectorOrBlockForName metric: selectorOrBlockForMetric
	"Display a list of countries"
	"E.g., countries: #(#('France' 50) #('Germany' 80)) named: #first metric: #second"
	
	"Example:
	RTMapBuilder2 new countries: #(#('France' 20) #('Germany' 80)) named: #first metric: #second; open
	"
	| cn maxValue tcountryName svgCountryName normalizedCountries |
	"Initialize the color normalizer"
	cn := RTMultiLinearColor new colors: (Array with:(Color r:0.8 g:0.8 b:1) with: (Color r:0 g:0 b:0.3)).
	
	"Get the maximum, useful since we need value between 0.0 and 1.0"
	maxValue := (collection collect: selectorOrBlockForMetric) max.
	
	"We pick only the country we have the geographical position"
	normalizedCountries := collection select: [ :country | 
										tcountryName := selectorOrBlockForName rtValue: country.
										svgCountryName := self convertIntoSVGCountryName: tcountryName. 
										svgCountryName notNil ].
									
	normalizedCountries do: [ :country |
		| elem |
		tcountryName := selectorOrBlockForName rtValue: country.
		svgCountryName := self convertIntoSVGCountryName: tcountryName.
		elem := (RTSVGPath new
			path: (RTSVGPath perform: svgCountryName);
			fillColor: [ :cc | cn level: (selectorOrBlockForMetric rtValue: cc) / maxValue ];
			scale: 1) elementOn: country.
		elem  when: TRMouseClick do: [ :evt | elem inspect ].
		elem @ RTPopup.
		view add: elem.
	].