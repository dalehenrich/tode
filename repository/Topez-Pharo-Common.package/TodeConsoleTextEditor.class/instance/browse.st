editing keys
browse
	self lineSelectAndEmptyCheck: [ ^ self ].
	self model evaluate: 'browse class ' , (self selection string copyWithoutAll: CharacterSet crlf).
	^ true