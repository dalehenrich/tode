as yet unclassified
loginUsing: todeSessionClass
	| sess |
	self proxyBehaviorClass resetAllGlobalNames.	"reset the cache on login"
	sess := todeSessionClass new
		topez: self;
		yourself.
	(sess loginWith: self sessionDescription)
		ifFalse: [ 
			| gciError messageText |
			gciError := sess getAndClearLastError.
			messageText := gciError message.
			^ Error signal: messageText , ' For further information about login failures, check the gem log file' ].
	false
		ifTrue: [ sess enableGemTrace ].
	^ sess