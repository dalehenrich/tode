as yet unclassified
defaultAction
	| result |
	result := self performSendNoForwarder: [ self resume: (Array with: #resume with: nil) ].
	self resume: (Array with: #resume with: result)