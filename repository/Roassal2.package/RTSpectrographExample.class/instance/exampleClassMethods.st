sources
exampleClassMethods
	| b |
	b := RTSpectrograph new.
	b objects: (RTLayout withAllSubclasses reverseSortedAs: #numberOfMethods).
	b popupText: [ :aClass :cm | cm methodClass name, '>>', cm selector ].
	b lineBlock: [ :cls | cls rtmethods, cls class rtmethods ].
	b highlight: [ :aClass :cm | cm methodClass isMeta ].
	b title: 'Proportion of class methods'.
b build.
^ b view