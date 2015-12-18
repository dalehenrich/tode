hooks
createShapeBuilder
	| sb |
	sb := RTBoundedShapeBuilder new.
	sb shapeInitializer: [ :aShape | sb color: (Color gray: (5 - ((self currentDepth + 1 min: 5)) / 5.0) asFloat) ].

"	sb rectangle color: (Color gray: (5 - ((self currentDepth + 1 min: 5)) / 5.0) asFloat)."
	"sb rectangle color: Color white; borderColor: Color black."
	^ sb
	