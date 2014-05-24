accessing
sessionDescription
	sessionDescription ifNil: [ sessionDescription := self topezClientClass sessionNamed: self sessionName ].
	^ sessionDescription