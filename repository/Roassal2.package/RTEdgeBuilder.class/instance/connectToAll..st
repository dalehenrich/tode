public
connectToAll: aBlockOrASymbol

	| edges toElements |
	edges := RTGroup new.
	self elements copy do: [ :e | 
		toElements := self elementsToLookup elementsFromModels: (aBlockOrASymbol rtValue: e model).
		toElements ifNotNil: [ 
			toElements do: [ :toE | 
				edges add: (self edgeFrom: e to: toE) ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges