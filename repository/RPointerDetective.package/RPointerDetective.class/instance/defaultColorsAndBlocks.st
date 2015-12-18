as yet unclassified
defaultColorsAndBlocks
	self colorAndBlock: ((Color orange alpha: 0.5) -> [ :nde | nde isCollection]);
		colorAndBlock: ((Color white alpha: 0.5) -> [ :nde | nde isKindOf: UndefinedObject]);
		colorAndBlock: ((Color yellow alpha: 0.5) -> [ :nde | nde isKindOf: WorkspaceVariable]);
		colorAndBlock: ((Color brown alpha: 0.5) -> [ :nde | nde isMorph]).	
		
