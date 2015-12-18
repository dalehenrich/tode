visitor
visitCanvas: aCanvas
	|elementShapes edgeShapes decoratedEdgeShapes decorationShapes nonDecorationShapes lineClasses lineDecorationClasses canvasShapes|
	
	
	canvasShapes := aCanvas shapes sort: [ :a :b | a name < b name ].
	lineClasses := Array with: TRLineShape with: TRBezierShape.
	lineDecorationClasses := TRAbstractLineDecoratorShape withAllSubclasses.
	elementShapes := canvasShapes reject: [ :e |  (lineClasses includes: e class)  or: [ lineDecorationClasses includes: e class  ]].
	edgeShapes := (canvasShapes select: [ :e |  (lineClasses includes: e class)] ) asOrderedCollection.
	nonDecorationShapes := (canvasShapes reject: [ :e | lineDecorationClasses includes: e class ]) asOrderedCollection.
	decorationShapes := canvasShapes select: [ :e |  lineDecorationClasses includes: e class].
	decoratedEdgeShapes := self separateDecorated: edgeShapes decorations: decorationShapes.
	
	stream 
		nextPutAll: '<defs>'.
	decorationShapes do: [:s | s accept: self ].
	stream 
		nextPutAll: '</defs>'.
	nonDecorationShapes do:[:s | s accept: self].
	decoratedEdgeShapes do:[:p | p first accept: self with: p second].