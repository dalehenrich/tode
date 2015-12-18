private
layoutAt: aPoint
	
	| treeWidth layerKeys layer layerWidth horizontalPosition verticalPosition layerHeight |
	treeWidth := layers values
		inject: self maxFloat negated
		into:
			[:max :e | max max: (e sum: #width) + ((e size - 1) * self horizontalGap)].
	verticalPosition := self horizontalGap.	"For visual reasons NOT: self class verticalGap"
	layerKeys := layers keys asSortedCollection reverse.
	layerKeys
		do:
			[:aKey | 
			layer := layers at: aKey.
			layerWidth := (layer sum: #width)
				+ ((layer size - 1) * self horizontalGap).
			layerHeight := (layer detectMax: #height) height.
			horizontalPosition := treeWidth / 2.0 + aPoint x - (layerWidth / 2.0).
			layer
				do:
					[:node | 
					translator translate: node to:  horizontalPosition @ verticalPosition.
					
					horizontalPosition := horizontalPosition + node width
						+ self horizontalGap].
			verticalPosition := verticalPosition + layerHeight + self verticalGap]