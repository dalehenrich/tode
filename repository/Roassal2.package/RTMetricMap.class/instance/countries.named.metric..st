public
countries: collection named: selectorOrBlockForName metric: selectorOrBlockForMetric
	"Display a list of countries"
	"E.g., countries: #(#('France' 50) #('Germany' 80)) named: #first metric: #second"
	
	"Example:
	RTMapBuilder2 new countries: #(#('France' 20) #('Germany' 80)) named: #first metric: #second; open
	"
	countryData := collection.
	countryName := selectorOrBlockForName.
	self fillViewWithCountries: countryData named: countryName metric: selectorOrBlockForMetric