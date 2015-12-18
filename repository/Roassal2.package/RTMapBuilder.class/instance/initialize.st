initialization
initialize
	super initialize.
	countries := #().
	cities := OrderedCollection new.
	cityBuilder := RTCityBuilder new.
	cityBuilder mapBuilder: self.
	routeBuilder := RTRouteBuilder new.
	routeBuilder mapBuilder: self.
	scale := 1.