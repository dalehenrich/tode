as yet unclassified
update: aSymbol
	aSymbol == #exit
		ifTrue: [  
      ^ self owner
        release;
        delete  ].
	^ super update: aSymbol