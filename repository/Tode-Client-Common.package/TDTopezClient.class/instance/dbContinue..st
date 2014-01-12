as yet unclassified
dbContinue: processOop
	^ self handleDebugExceptionsDuring: [ self session continue: (self session asOopType: processOop) ] 