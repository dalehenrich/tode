parse
scanIdentifier
	| c start pathTermChars |
	start := sourcePosition.
	pathTermChars := #($* $| $#).	"path dot syntax support"
	[ 
	(((c := self nextChar) isAlphaNumeric or: [ pathTermChars includes: c ]) or: [ c == $_ ])
		or: [ 
			c == $.
				and: [ 
					| peek |
					peek := self peekChar.
					peek isAlphaNumeric or: [ (pathTermChars includes: peek ) and: [self peek2Char isAlphaNumeric] ] ] ] ] whileTrue.
	(c == $: and: [ (self isSelectorCharacter: self peekChar) not ])
		ifTrue: [ self nextChar ].
	currentToken := source copyFrom: start to: sourcePosition - 1.
	currentTokenSourcePosition := start