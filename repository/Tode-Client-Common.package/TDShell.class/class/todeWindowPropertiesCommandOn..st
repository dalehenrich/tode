system menu
todeWindowPropertiesCommandOn: aBuilder
	<worldMenu>

	| windowLayoutDir |
	windowLayoutDir := self windowLayoutHome asFileReference.
	windowLayoutDir exists
		ifTrue: [ 
			(aBuilder item: #'tODE Window Layout')
				parent: #tODE;
				order: 5.0;
				target: self;
				withSeparatorAfter.
			windowLayoutDir files
				do: [ :file | 
					(aBuilder item: file basename asSymbol)
						parent: #'tODE Window Layout';
						action: [ 
									| windowProperties |
									windowProperties := TDWindowProperties importFrom: file fullName.
									windowProperties installOn: TDTopezGemStoneClient ] ] ]