system menu
todeWindowPropertiesCommandOn: aBuilder
	<todeWorldMenu>
	| windowLayoutFiles |
	windowLayoutFiles := self windowLayoutFiles.
	windowLayoutFiles notEmpty
		ifTrue: [ 
			(aBuilder item: #'Window Layout')
				parent: #Client;
				order: 1.8;
				withSeparatorAfter.
			(aBuilder item: #'Edit Window Layout')
				parent: #Client;
				order: 1.7;
				target: self.
			(windowLayoutFiles sorted: [ :a :b | a basename <= b basename ])
				do: [ :file | 
					(aBuilder item: file basename asSymbol)
						parent: #'Window Layout';
						action: [ 
									| windowProperties transcriptBounds |
									windowProperties := TDAbstractWindowProperties importFrom: file fullName.
									windowProperties installOn: TDTopezGemStoneClient.
									transcriptBounds := windowProperties caculateWindowBounds at: #transcript.
									(World systemWindows
										detect: [ :each | each model = Transcript ]
										ifNone: [ 
											ThreadSafeTranscript install.
											Transcript open ])
										extent: transcriptBounds extent;
										position: transcriptBounds origin ].
					(aBuilder item: file basename asSymbol)
						parent: #'Edit Window Layout';
						action: [ 
									| windowProperties |
									windowProperties := TDAbstractWindowProperties importFrom: file fullName.
									self new
										openWorkspace: (TDShell windowLayoutWorkspaceNamed: file basename for: windowProperties)
										styling: false
										label: file basename ] ] ]