as yet unclassified
dbStepThrough: level forProcessOop: processOop
	[ ^ self handleDebugExceptionsDuring: [ self session stepThroughWith: (self session asOopType: processOop) level: level ] ]
		on: GsClientForwarderSendNotification
		do: [ :ex | 
			| result |
			result := ex performSendNoForwarder: [  ].
			^ ex resume: (Array with: #resume with: result) ]