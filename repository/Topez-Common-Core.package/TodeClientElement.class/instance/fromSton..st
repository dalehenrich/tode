ston
fromSton: stonReader
	stonReader
		parseMapDo: [ :instVarName :value | 
			[ self instVarNamed: instVarName put: value ]
				on: Error
				do: [ :ignored | 
					"If the instance variable for a TodeClient is missing ... it is for a good reason ... keep on truckin'"
					 ] ]