sources
exampleColoredNodes

	| b |
	b := RTMondrian new.
	b shape rectangle 
				width: [ :cls | cls numberOfVariables * 5];
				height: #numberOfMethods;
				if: [:cls | '*Layout*' match: cls name ] color: Color red;
				if: [:cls | '*Builder*' match: cls name ] color: Color green.
	b nodes: RTObject withAllSubclasses.
	b edges connectFrom: #superclass.
	b layout tree.
	b build.
	^ b view