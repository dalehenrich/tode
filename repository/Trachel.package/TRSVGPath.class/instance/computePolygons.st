private
computePolygons
	| separatedPaths |
	separatedPaths := self separateSubPaths.
	polygons := OrderedCollection new.
	separatedPaths
		do: [ :eachPath | 
			| eachPolygon |
			eachPolygon := OrderedCollection new.
			eachPath
				do: [ :curve | 
					curve key = 'm'
						ifFalse: [ eachPolygon add: curve value first ] ].
			polygons add: eachPolygon ].	