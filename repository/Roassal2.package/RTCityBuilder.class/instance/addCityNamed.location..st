initialization
addCityNamed: aName location: aPoint
	"aName is a string and aPoint is a geographical location, longititud @ latitud"
	cities at: aName put: aPoint