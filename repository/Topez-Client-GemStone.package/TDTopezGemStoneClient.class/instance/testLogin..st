builtins
testLogin: testSession
	^ testSession
		executeStringNB:
			'| stream stoneVersionReport |
		stream := WriteStream on: String new.
		stoneVersionReport := System stoneVersionReport.
		stream 
		  nextPutAll: ''Stone            : '', System stoneName; 
		  cr;
		  nextPutAll: ''Stone host       : '', (stoneVersionReport at: ''nodeName'');
		  cr;
		  nextPutAll: ''GemStone version : '', (stoneVersionReport at: ''gsVersion'');
		  cr;
		  nextPutAll: ''cpu kind         : '', (stoneVersionReport at: ''cpuKind'');
		  cr;
		  nextPutAll: ''GLASS version    : '', (ConfigurationOfGLASS project currentVersion printString);
		  cr;
		  nextPutAll: ''Metacello version: '', (ConfigurationOfMetacello project currentVersion printString);
		  cr;
		  yourself.
	   #( ''GLASS1'' ''Tode'') do: [:baselineName |
		 Smalltalk at: #BaselineOfGLASS1 
		   ifAbsent: [ stream nextPutAll: baselineName, '' not installed''; cr ].
		 Smalltalk at: #BaselineOfGLASS1 		
		   ifPresent: [ :ignored | 
           Smalltalk at: #''MetacelloProjectRegistration''
             ifPresent: [ :cls | 
               (cls registrationForClassNamed: ''BaselineOf'', baselineName ifAbsent: [  ])
                 ifNil: [ stream nextPutAll: baselineName, '' not installed''; cr]
                 ifNotNil: [ :registration | 
                   registration loadedInImage
                     ifTrue: [ 
	                    stream nextPutAll: baselineName, '':''; cr.
                       registration baselineProjectSpec repositories
                         do: [ :repo | stream nextPutAll: ''       repository: '', repo createRepository directory pathName; cr ] ]
                     ifFalse: [ stream nextPutAll: baselineName, '' not installed''; cr ] ] ] ]
               ].
 		stream contents'
		envId: self environmentId