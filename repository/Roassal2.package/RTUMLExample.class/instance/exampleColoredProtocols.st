sources
exampleColoredProtocols
	| someClasses allMethodCategories b n |
	someClasses := RTShape withAllSubclasses.
	allMethodCategories := (someClasses flatCollect: #protocols) asSet asArray.

	b := RTUMLClassBuilder new.
	n := RTMultiLinearColorForIdentity new objects: allMethodCategories.

	b methodShape label
		color: [ :m | n rtValue: m protocol ].

	b methodsNames: [ :cls | (cls rtmethods sortedAs: #protocol) ].
	b addObjects: someClasses.
	b treeLayout.
	b build.
	^ b view	
