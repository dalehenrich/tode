as yet unclassified
dbStep: level forProcessOop: processOop
	[ ^ self handleDebugExceptionsDuring: [ self session stepWith: (self session asOopType: processOop) level: level ] ]
		on: GsClientForwarderSendNotification
		do: [ :ex | 
			| result |
			result := ex performSendNoForwarder: [  ].
			^ ex resume: (Array with: #resume with: result) ]