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
			(windowLayoutDir files sorted: [ :a :b | a fullName <= b fullName ])
				do: [ :file | 
					(aBuilder item: file basename asSymbol)
						parent: #'tODE Window Layout';
						action: [ 
									| windowProperties |
									windowProperties := TDAbstractWindowProperties importFrom: file fullName.
									windowProperties installOn: TDTopezGemStoneClient ] ] ]