as yet unclassified
dbStepThrough_36x: level forProcessOop: processOop
	[ ^ self handleDebugExceptionsDuring: [ self session stepThroughWith_36x: (self session asOopType: processOop) level: level ] ]
		on: GsClientForwarderSendNotification
		do: [ :ex | 
			| result |
			result := ex performSendNoForwarder: [  ].
			^ ex resume: (Array with: #resume with: result) ]