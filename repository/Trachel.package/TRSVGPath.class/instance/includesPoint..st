testing
includesPoint: aPoint
	|apt invertedPoint |
	invertedPoint := matrix inverseTransform: aPoint.
	apt := AthensPolygonTester new.
	^ polygons anySatisfy: [ :eachPolygon | ((apt polygon: eachPolygon) includesPoint: invertedPoint) ]