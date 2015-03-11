system menu
todeWindowPropertiesCommandOn: aBuilder
	<worldMenu>
	| windowLayoutFiles |
	windowLayoutFiles := self windowLayoutFiles.
	windowLayoutFiles notEmpty
		ifTrue: [ 
			(aBuilder item: #'tODE Window Layout')
				parent: #tODE;
				order: 5.0;
				target: self.
			(aBuilder item: #'tODE Window Edit')
				parent: #tODE;
				order: 5.5;
				target: self;
				withSeparatorAfter.
			(windowLayoutFiles sorted: [ :a :b | a basename <= b basename ])
				do: [ :file | 
					(aBuilder item: file basename asSymbol)
						parent: #'tODE Window Layout';
						action: [ 
									| windowProperties |
									windowProperties := TDAbstractWindowProperties importFrom: file fullName.
									windowProperties installOn: TDTopezGemStoneClient ].
					(aBuilder item: file basename asSymbol)
						parent: #'tODE Window Edit';
						action: [ 
									| windowProperties |
									windowProperties := TDAbstractWindowProperties importFrom: file fullName.
									self new
										openWorkspace: (TDShell windowLayoutWorkspaceNamed: file basename for: windowProperties)
										styling: false
										label: file basename ] ] ]