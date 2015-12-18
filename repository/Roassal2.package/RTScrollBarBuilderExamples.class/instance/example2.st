as yet unclassified
example2

"
RTScrollBarBuilderExamples new example2
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
b2 view: b view.
b2 scrollBarType: #isPad.
b2 build.


^ b view