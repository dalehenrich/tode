as yet unclassified
dbStep_36x: level forProcessOop: processOop
	[ ^ self handleDebugExceptionsDuring: [ self session stepWith_36x: (self session asOopType: processOop) level: level ] ]
		on: GsClientForwarderSendNotification
		do: [ :ex | 
			| result |
			result := ex performSendNoForwarder: [  ].
			^ ex resume: (Array with: #resume with: result) ]