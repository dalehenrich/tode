private
rearrangeByLayers: aGraph
	| cursor layerDepthSize |
	cursor := self topGap.
	nodesByLayer do: [:eachSetOfNodes |
		layerDepthSize := eachSetOfNodes inject: 0 into: [:max :eachNode | 
			eachNode translateTo: (eachNode position x @ cursor ).
			max max: eachNode height ].
		cursor := cursor + layerDepthSize + self verticalGap ]