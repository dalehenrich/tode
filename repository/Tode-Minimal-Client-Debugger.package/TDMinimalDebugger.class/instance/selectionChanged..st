updating
selectionChanged: aContext

	aContext isNotNil ifTrue: [ self announce: (GTGenericStackDebuggerSelectionChanged forDebugger: self) ].

	UIManager default defer: [ 
		(self browser paneNamed: #stack) presentations updateToolbar ].
	