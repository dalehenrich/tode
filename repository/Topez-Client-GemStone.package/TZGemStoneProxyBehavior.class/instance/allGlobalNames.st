as yet unclassified
allGlobalNames
	self topez effectiveApiVersion < '1.5.0' asMetacelloVersionNumber
		ifTrue: [ ^ self oldAllGlobalNames ].
	AllGlobalNames
		ifNil: [ 
			| messageSend |
			messageSend := TZGsMessageSend new
				topez: self topez;
				receiver: self topez topezServerProxy;
				selector: 'stonAllGlobalNames';
				arguments: #();
				transform: #native -> 1.
			self
				critical: [ 
					| stonString |
					stonString := messageSend value.
					AllGlobalNames := (STONReader on: stonString readStream) next ] ].
	^ AllGlobalNames