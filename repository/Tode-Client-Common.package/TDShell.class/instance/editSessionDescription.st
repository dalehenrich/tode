built-ins
editSessionDescription
	| description sessionExpression |
	description := self topezClient sessionDescription.
	sessionExpression := (TDMultiLineText new
		prompt: 'Session Description';
		template: description editTemplate) interact.
	sessionExpression
		ifNotNil: [ 
			description := Compiler evaluate: sessionExpression.
			self topezClient  sessionDescription: description.
			shellWindow setLabel: self windowLabel ].
	^ description editTemplate