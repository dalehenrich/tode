Pillar utility
insert: aView named: aName inPillarStream: aStream directory: aDirectory
	"Here is an example on how to use this method
	

PRHTMLWriter defaultConfigurations anyOne
    inputString: '
!Hello
Some text with *a link to Pharo>http://www.pharo.org*.

!!World
Here is a small Roassal visualization

[[[eval=true

b := RTMondrian new.
b nodes: Collection withAllSubclasses.
b edges connectFrom: #superclass.
b layout tree.
b build.
v := b view.
			RTHTML5Exporter new insert: v named: ''Example Roassal'' inPillarStream: stream
]]]
';
    outputFile: 'myFirstPillarExport.html' asFileReference;
    export

	"

	| s |
	s := self getIFrameDefFromView: aView label: aName directory: aDirectory.
	aStream nextPutAll: '{{{ <BR>', s, ' }}}'