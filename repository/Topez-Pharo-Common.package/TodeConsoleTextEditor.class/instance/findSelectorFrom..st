private
findSelectorFrom: aString
	"Dan's code for hunting down selectors with keyword parts; while this doesn't give a true parse, in most cases it does what we want, in where it doesn't, we're none the worse for it."

	| sel possibleParens |
	sel := aString trimBoth.
	sel := sel copyReplaceAll: '#' with: ''.
	(sel includes: $:)
		ifTrue: [ 
			sel := sel copyReplaceAll: ':' with: ': '.	"for the style (aa max:bb) with no space"
			possibleParens := sel findTokens: Character separators.
			sel := aString class
				streamContents: [ :s | 
					| level |
					level := 0.
					possibleParens
						do: [ :token | 
							| n |
							(level = 0 and: [ token endsWith: ':' ])
								ifTrue: [ s nextPutAll: token ]
								ifFalse: [ 
									(n := token occurrencesOf: $() > 0
										ifTrue: [ level := level + n ].
									(n := token occurrencesOf: $[) > 0
										ifTrue: [ level := level + n ].
									(n := token occurrencesOf: $]) > 0
										ifTrue: [ level := level - n ].
									(n := token occurrencesOf: $)) > 0
										ifTrue: [ level := level - n ] ] ] ] ].
	sel isEmpty
		ifTrue: [ ^ nil ].
	sel isOctetString
		ifTrue: [ sel := sel asOctetString ].
	^ sel asSymbol