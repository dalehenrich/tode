helpers
exportSVG: aView
	| visitor |

	visitor := RTSVGVisitor2 new.
	visitor exportFixedShapes: self exportFixedShapes.
	visitor stream: stream.
	visitor visitView: aView.