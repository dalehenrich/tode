simple
exampleDependencyAnalyzerBuilder
	
	"self new exampleDependencyAnalyzerBuilder"
	| b |	
	b := RTMondrian new.
	b nodes: Collection withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b open.

	"This line does the export"
	RTSVGExporter exportBuilderAsSVG: b filename:'exampleDependencyAnalyzerBuilder'.