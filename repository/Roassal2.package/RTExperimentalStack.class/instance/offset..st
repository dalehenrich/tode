as yet unclassified
offset: arg
	offset := arg isBlock 
		ifTrue: [ arg ] 
		ifFalse: [ stackOffsets at: arg ifAbsent: [ 
				offset ] ] .
	
	