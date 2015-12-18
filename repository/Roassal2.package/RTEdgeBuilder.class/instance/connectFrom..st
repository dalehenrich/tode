public
connectFrom: aBlockOrASymbol

	| edges fromElement aModel |
	edges := RTGroup new.
	self elements copy do: [ :e | 
		aModel := aBlockOrASymbol rtValue: e model.
		fromElement := self elementsToLookup elementFromModel: aModel.
		fromElement ifNotNil: [ edges add: (self edgeFrom: fromElement to: e) ] ].
	self moveBehindIfNecessary: edges.
	^ edges