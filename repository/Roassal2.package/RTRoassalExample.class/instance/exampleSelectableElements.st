sources
exampleSelectableElements

|  b label labelShape |
b := RTMondrian new.
b nodes: Collection withAllSubclasses.
b layout flow.
b normalizer 
	normalizeSize: #numberOfMethods.

b build.

"Adding a label"
labelShape := RTLabel new text: 'Nothing selected'.
label := labelShape element.
b view add: label.
TRConstraint move: label below: b view elements.

"Changing the label according to the selection"
b view elements @ (RTSelectable new selectionCallback: [ :es | label trachelShape text: es size asString, ' selected elements']).

^ b view