tests
testPixelsToGeoTransformations
	|santiago stgoPixels paris parisPixels pixelsToGeo|
	
	santiago := -33.45 @ -70.66.
	paris := 48.85 @ 2.35.
	
	pixelsToGeo := [ :p | (builder translatePixelsToGeoPosition: p) roundTo: 0.01]. 
	
	stgoPixels := builder translateGeoPositionToPixels: santiago.
	self assert: ((pixelsToGeo value: stgoPixels) closeTo: santiago).
	
	parisPixels := builder translateGeoPositionToPixels: paris.
	self assert: ((pixelsToGeo value: parisPixels) closeTo: paris).
	
	