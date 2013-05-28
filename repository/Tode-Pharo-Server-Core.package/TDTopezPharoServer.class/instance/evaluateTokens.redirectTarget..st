as yet unclassified
evaluateTokens: tokens redirectTarget: aRedirectTarget
	redirectTarget := aRedirectTarget.
	result := self evaluateTokens: tokens objIn: objIn.
	objIn := result resultObject.
	self redirectObjIn: redirectTarget.
	^ result renderAsTextFor: self