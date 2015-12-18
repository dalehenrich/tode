public
connectTo: aBlockOrASymbol

	| edges toElement |
	edges := RTGroup new.
	self elements copy do: [ :e | 
		toElement := self elementsToLookup elementFromModel: (aBlockOrASymbol rtValue: e model).
		toElement ifNotNil: [ edges add: (self edgeFrom: e to: toElement) ] ].
	self moveBehindIfNecessary: edges.
	^ edges