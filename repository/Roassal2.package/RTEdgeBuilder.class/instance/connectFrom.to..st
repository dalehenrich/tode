public
connectFrom: aFromBlock to: aBlockOrASymbol

	| edges toElement fromElement |
	edges := RTGroup new.
	self elements copy do: [ :e | 
		fromElement := self elements elementFromModel: (aFromBlock rtValue: e model). 
		toElement := self elementsToLookup elementFromModel: (aBlockOrASymbol rtValue: e model).
		toElement ifNotNil: [ 
			(self shouldCreateEdgeFrom: fromElement to: toElement) ifTrue: [ 
				edges add: (self edgeFrom: fromElement to: toElement) ] ] ].
	self moveBehindIfNecessary: edges.
	^ edges