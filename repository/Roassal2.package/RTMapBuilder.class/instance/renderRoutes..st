hooks
renderRoutes: aView
	|routes|
	routes := routeBuilder buildRoutesUsingNames: cityBuilder names.
	aView addAll: routes.
	^ routes