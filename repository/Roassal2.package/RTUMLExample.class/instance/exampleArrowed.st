sources
exampleArrowed
| b |
b := RTUMLClassBuilder new.
   b instanceVariables: #instVarNames.
   b methodselector: #selector.
	b methodsNames: #methods.
   b attributeselector: #yourself.

b lineShape arrowedLine.

b addObjects: (TREvent withAllSubclasses ).
b layout tree.

b build.
^b view