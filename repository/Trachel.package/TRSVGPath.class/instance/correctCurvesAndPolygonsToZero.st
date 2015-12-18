private
correctCurvesAndPolygonsToZero
	"Center of polygons is stored in originalPosition and the center is moved to 0@0."
	| originalPosition |
	self computeRectangle.
	originalPosition := rectangle center.
	curves
		do: [ :eachCurve | eachCurve value doWithIndex: [ :eachPoint :index | eachCurve value at: index put: eachPoint - originalPosition ] ].
	polygons
		do: [ :eachPolygon | eachPolygon doWithIndex: [ :eachPoint :index | eachPolygon at: index put: eachPoint - originalPosition ] ].
	self computeRectangle.