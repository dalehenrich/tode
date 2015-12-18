example
example01
	| b view |
	b := RTMondrian new.
	b nodes: RTShape withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b build.
	
	view := b view.
	(DCTRCanvasExporter canvas: view canvas)
		withoutFixedShapes;
		whole;
		defaultScale;
		oversizedBy: 20 @ 20;
		format: #png;
		fileName: ((TRPlatform current dialogRequest: 'Please enter file name' initialAnswer: 'export.png') ifNil: [ ^ nil ]);
		export