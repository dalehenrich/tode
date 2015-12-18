as yet unclassified
executePolygonsColor: alpha
"define the alpha value and create polygons"
	kiviatNodes do: [  :kn |
		kn polygonElement: ((RTPolygon new borderColor: ((kn nodeKiviatElements first color) alpha: alpha);  color: ((kn nodeKiviatElements first color)alpha: alpha); vertices: ((kn nodeKiviatElements collect: [ :ne | ne position ]) asArray)) elementOn: kn).
		]
