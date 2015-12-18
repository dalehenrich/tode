sources
examplePieAndLegend

| b myClasses lb normalizer |
myClasses := (Array with: Dictionary with: Collection with: Set with: OrderedCollection ).

b := RTPieBuilder new.
b interaction popup.
b objects: myClasses.
b slice: #numberOfMethods.
b normalizer distinctColor.	
b labelled.
b emphasize: Set by: 20.
b emphasize: Dictionary by: 20.

"Legend"
lb := RTLegendBuilder new.
lb view: b view.
lb addText: 'Distribution of number of Methods in some classes'.
normalizer := RTMultiLinearColorForIdentity new objects: myClasses.
myClasses do: [ :aClass |
	lb addColor: (normalizer rtValue: aClass) text: aClass name.
].
lb build.
b build.
^ b view