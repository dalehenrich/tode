built-ins
editSessionDescription
	|  sessionExpression |
	sessionExpression := (TDMultiLineText new
		prompt: 'Session Description';
		template: sessionDescription editTemplate) interact.
	sessionExpression
		ifNotNil: [ 
			sessionDescription := Compiler evaluate: sessionExpression.
			self topezClient  sessionDescription: sessionDescription.
			shellWindow setLabel: self windowLabel ].
	^ sessionDescription editTemplate