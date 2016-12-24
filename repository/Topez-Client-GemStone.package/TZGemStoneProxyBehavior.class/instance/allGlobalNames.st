as yet unclassified
allGlobalNames
	AllGlobalNames
		ifNil: [ 
			| messageSend |
			messageSend := TZGsMessageSend new
				topez: self topez;
				receiver: self topez topezServerProxy;
				selector: 'stonAllGlobalNames';
				arguments: #();
				transform: #ston -> 1.
			self critical: [ AllGlobalNames := messageSend value ] ].
	^ AllGlobalNames