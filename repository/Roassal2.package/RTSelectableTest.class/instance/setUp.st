running
setUp
	| b |
	b := RTMondrian new.
	b nodes: Collection withAllSubclasses.
	b layout flow.
	b normalizer 
		normalizeSize: #numberOfMethods.
	b build.	
	selectedElements := #().
	selectable := RTSelectable new selectionCallback: [ :es | selectedElements := es ].
	b view elements @ selectable.
	
	view := b view.
	
	