examples
exportAll
	"
	self new exportAll
	"
	| e view exporter list error |
	(self confirm: 'Are you sure to run this example? Warning: Several files are created') ifFalse: [ ^ self ].
	exporter := RTHTML5Exporter new.
	list := OrderedCollection new.
	(RTAbstractExample subclasses flatCollect: [ :cls | cls rtmethods ])
	do: [ :met | (met selector endsWith: 'Icon') ifFalse: [  
		e := met methodClass new.
		error := false.
		[view := e perform: met selector.] 
		on: Error do: [ :er | error := true ].
		
		((view isKindOf: RTView) and: [ error not ]) ifTrue: [ 
			list add: met.
			exporter fileName: met methodClass name,'-',met selector, '.html'.
			exporter title: met selector.
			exporter export: view.
			 ].
		
	] ] displayingProgress: 'Exporting...'.

	(self createIndexFor: list) asUrl open
	
