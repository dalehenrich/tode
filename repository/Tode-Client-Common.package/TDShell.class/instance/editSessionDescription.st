session description builtin
editSessionDescription
	| description sessionExpression |
	sessionExpression := (TDMultiLineText new
		prompt: 'Session Description';
		template: self topezClient sessionDescription editTemplate) interact.
	sessionExpression
		ifNotNil: [ 
			description := Compiler evaluate: sessionExpression.
			self topezClient sessionDescription: description.
			TDTopezGemStoneClient sessionMap at: description name put: description ]