editing keys
browse
	self lineSelectAndEmptyCheck: [ ^ false ].
	self model evaluate: 'browse class ' , (self selection string copyWithoutAll: CharacterSet crlf).
	^ true