as yet unclassified
executePolygonsColor: alpha node: aKiviatNode
"define the alpha value and create polygon"
		aKiviatNode polygonElement: ((RTPolygon new borderColor: ((aKiviatNode nodeKiviatElements first color) alpha: alpha);  color: ((aKiviatNode nodeKiviatElements first color)alpha: alpha); vertices: ((aKiviatNode nodeKiviatElements collect: [ :ne | ne position ]) asArray)) elementOn: aKiviatNode).