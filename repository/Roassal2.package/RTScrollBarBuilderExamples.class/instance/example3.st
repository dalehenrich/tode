as yet unclassified
example3

"
RTScrollBarBuilderExamples new example3
"

| b b2 |
b := RTMondrian new.
	b shape rectangle 
				withBorder;
				width: [ :cls | cls numberOfVariables * 5];
				height: #numberOfMethods;
				linearFillColor: #numberOfLinesOfCode within: RTObject withAllSubclasses.
	b nodes: RTObject withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b build.


b2 := RTScrollBarBuilder new.
b2 size: [ :v | v view canvas extent x / 3].
b2 barSpecific: #scalable.
b2 barShape: #aBox.
b2 view: b view.
b2 build.


^ b view