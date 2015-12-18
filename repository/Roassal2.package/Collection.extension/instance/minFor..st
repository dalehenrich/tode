*Roassal2-Core
minFor: aSymbolOrBlock 
	"Return one of the elements which has the minimum value returned by aSymbolOrBlock"
	
	"
	#(5 6 2 1 4) min
	#(5 6 2 1 4) minFor: #negated
	"
	^self 
		inject: self anyOne 
		into: [ :min :each | 
			(aSymbolOrBlock value: each) < (aSymbolOrBlock value: min)
				ifTrue: [ each ]
				ifFalse: [ min ] ]