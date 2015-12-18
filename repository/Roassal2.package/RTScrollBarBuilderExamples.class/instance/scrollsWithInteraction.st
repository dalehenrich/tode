as yet unclassified
scrollsWithInteraction

"
RTScrollBarBuilderExamples new scrollsWithInteraction
"
| b |

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
b view @ RTDoubleScrollBar.
^ b view