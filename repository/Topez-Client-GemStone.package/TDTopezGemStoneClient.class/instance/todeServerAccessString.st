as yet unclassified
todeServerAccessString
	| todeUserId |
	todeUserId := self todeUserId.
	todeUserId = self sessionDescription userId
		ifTrue: [ 
			self serverType: #standard.
			^ 'TDTopezServer' ].
	self serverType: #external.
	^ '((GS_AllUsers userWithId: ' , todeUserId printString , ') objectNamed: ''TDExternalTopezServer'')'