as yet unclassified
defaultColorsAndBlocks
	self colorAndBlock: ((Color orange alpha: 0.5) -> [ :nde | self shell onServerDo: [(Object _objectForOop: nde) isKindOf: Collection ]]);
		colorAndBlock: ((Color yellow alpha: 0.5) -> [ :nde |  self shell onServerDo: [(Object _objectForOop: nde) isKindOf: Association]]);
		colorAndBlock: ((Color r: 0.557 g: 0.267 b: 0.678 alpha: 0.5) -> [ :nde | self shell onServerDo: [(Object _objectForOop: nde) isKindOf: UserProfile]]);
		colorAndBlock: ((Color brown alpha: 0.5) -> [ :nde | self shell onServerDo: [(Object _objectForOop: nde) isKindOf: System]]).	
		

			