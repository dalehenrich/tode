as yet unclassified
todeServerAccessString
	| todeUserId |
	todeUserId := self todeUserId.
	todeUserId = self sessionDescription userId
		ifTrue: [ 
			self serverType: #standard.
			^ 'TDTopezServer' ].
	self serverType: #external.
	^ '
	[ | todeUserProfile |
	todeUserProfile := GS_AllUsers userWithId: ' , todeUserId printString, '.
	(todeUserPfofile objectNamed: ''TODE_ExternalTopezServer_CLASS'')
	  ifNotNil: [:cls | cls ]
	  ifNil: [ todeUserPfofile objectNamed: ''TDExternalTopezServer'' ] ] value'
	
