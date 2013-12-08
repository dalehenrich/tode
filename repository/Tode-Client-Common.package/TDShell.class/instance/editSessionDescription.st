session description builtin
editSessionDescription
	| description sessionExpression |
	description := self topezClient sessionDescription.
	sessionExpression := (TDMultiLineText new
		prompt: 'Session Description';
		template: description editTemplate) interact.
	sessionExpression
		ifNotNil: [ 
			description := Compiler evaluate: sessionExpression.
			self topezClient sessionDescription: description.
			TDTopezGemStoneClient sessionMap at: description name put: description ].
	^ description editTemplate