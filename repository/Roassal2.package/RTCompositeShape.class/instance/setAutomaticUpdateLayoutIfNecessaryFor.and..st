hooks
setAutomaticUpdateLayoutIfNecessaryFor: ss and: trachelShape
	automaticallyUpdateLayout
		ifTrue: [ 
			| b |
			b := TRExtentCallback new
				block: [ :aShape :ratio | 
					trachelShape resetInnerShapes.
					trachelShape perform: layout.
					trachelShape relayout ].
			ss do: [ :tupple | tupple first addCallback: b ] ]