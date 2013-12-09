builtins
testLogin: testSession
	^ testSession
		executeStringNB:
			'| stream stoneVersionReport glassConfig metacelloConfig|
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
		yourself.
		(System myUserProfile symbolList objectNamed: #ConfigurationOfGLASS) == nil ifTrue: [ stream nextPutAll: ''GLASS not installed''; cr ].
		(glassConfig := System myUserProfile symbolList objectNamed: #ConfigurationOfGLASS) ~~ nil ifTrue: [
		  (metacelloConfig := System myUserProfile symbolList objectNamed: #ConfigurationOfMetacello) ~~ nil ifTrue: [
		    stream
		      nextPutAll: ''GLASS version    : '', (glassConfig project currentVersion printString);
		      cr;
		      nextPutAll: ''Metacello version: '', (metacelloConfig project currentVersion printString);
		      cr;
		      yourself ] ].
	   #( ''GLASS1'' ''Tode'') do: [:baselineName |
		 (System myUserProfile symbolList objectNamed: #BaselineOfGLASS1)
		   == nil ifTrue: [ stream nextPutAll: baselineName, '' not installed''; cr ].
		 (System myUserProfile symbolList objectNamed: #BaselineOfGLASS1) 		
		   ~~ nil ifTrue: [ | cls |
           (cls := System myUserProfile symbolList objectNamed: #''MetacelloProjectRegistration'')
             ~~ nil ifTrue: [
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