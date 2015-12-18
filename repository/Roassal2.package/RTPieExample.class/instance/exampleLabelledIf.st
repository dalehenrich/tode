sources
exampleLabelledIf
	"
	var b: RTPieBuilder
	var c: Class
	"
	| b |
	b := RTPieBuilder new.
	b interaction popup.
	b objects: RTShape withAllSubclasses.
	b slice: #numberOfMethods.
	b normalizer distinctColor.	
	b labelledIf: [ :c | c numberOfMethods > 18 ].
	b build.
	^ b view