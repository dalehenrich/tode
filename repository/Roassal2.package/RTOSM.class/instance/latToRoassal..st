accessing
latToRoassal: lat
	| l |
	l := ((lat min: self maxLatitude) max: self minLatitude) degreesToRadians.
	^ (Float pi / 4 + (l / 2)) tan ln * self earthR negated