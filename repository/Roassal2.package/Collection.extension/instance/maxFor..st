*Roassal2-Core
maxFor: aSymbolOrBlock 
	"Return one of the elements which has the minimum value returned by aSymbolOrBlock"
	
	"
	#(5 6 2 1 4) max
	#(5 6 2 1 4) maxFor: #negated
	"
	^self 
		inject: self anyOne 
		into: [ :max :each | 
			(aSymbolOrBlock value: each) > (aSymbolOrBlock value: max)
				ifTrue: [ each ]
				ifFalse: [ max ] ]