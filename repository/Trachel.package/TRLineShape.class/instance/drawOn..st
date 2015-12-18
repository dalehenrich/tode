drawing
drawOn: athensCanvas

	athensCanvas pathTransform restoreAfter: [
		athensCanvas setShape: self path.
		(athensCanvas setStrokePaint: color) width: width.
		athensCanvas draw  ]
		"(athensCanvas setStrokePaint: strokePaint) width: (1.5 / (scale )) asInteger."