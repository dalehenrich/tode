tests
testGeoLength
	| santiago paris distance error vdm |
	
	santiago := -33.45 @ -70.66.
	vdm := -33 @ -71.52.
	paris := 48.85 @ 2.35.
	
	distance := builder geoDistanceBetween: santiago and: paris.
	error := distance * 0.003.
	self assert: (distance - error < 11650 and: distance + error > 11650).
	
	distance := builder geoDistanceBetween: santiago and: vdm.
	error := distance * 0.003.
	self assert: (distance - error < 94.35 and: distance + error > 94.35).
	
