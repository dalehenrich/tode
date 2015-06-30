accessing
handleResponseActions: action
	action isSymbol
		ifTrue: [ ^ self perform: action ].
	action isString
		ifTrue: [ 
			| ar result |
			ar := self objectSerializer fromString: action.
			ar isArray
				ifFalse: [ ^ ar ].
			1 to: ar size by: 2 do: [ :index | 
				| sel |
				sel := ar at: index.
				(ar at: index + 1)
					ifNil: [ result := self perform: sel ]
					ifNotNil: [ :arg | 
						(arg isKindOf: TodeClientElement)
							ifTrue: [ arg topez: self topez ].
						result := self perform: sel with: arg ] ].
			^ result ].
	^ action