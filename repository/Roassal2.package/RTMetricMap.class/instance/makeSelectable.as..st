public
makeSelectable: aBlock as: aTitle
	"Public method"
	"Add a menu in the visualization. Useful to switch between metrics"
	view canvas addMenu: aTitle callback: [ 
		self cleanView.
		self fillViewWithCountries: countryData named: countryName metric: aBlock ]