ston
fromSton: stonReader
  stonReader
    parseMapDo: [ :instVarName :value | 
      [ self instVarNamed: instVarName put: value ]
        on: Error
        do: [ :ignored | 
          "If the instance variable for a TDsessionDescription is missing ... it is for a good reason ... keep on truckin' ... if it's critical let's find out during execution rather than during import"
           ] ]