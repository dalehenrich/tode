public
connectFrom: aFromBlock toAll: aBlockOrASymbol

	| edges toElements fromElement |
	edges := RTGroup new.
	self elements copy do: [ :e | 
		fromElement := self elements elementFromModel: (aFromBlock rtValue: e model). 
		toElements := self elementsToLookup elementsFromModels: (aBlockOrASymbol rtValue: e model).
		toElements ifNotNil: [ 
			toElements do: [ :toE | 
				edges add: (self edgeFrom: fromElement to: toE) ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges