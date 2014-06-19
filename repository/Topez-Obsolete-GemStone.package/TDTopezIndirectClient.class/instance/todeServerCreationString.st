as yet unclassified
todeServerCreationString
  ^ self todeServerAccessString
    ,
      '
	createForIndirectAccessFrom: ''tode'' 
	todeSymbolDictionaryName: #tODE 
	shellId: ' , self shell shellId asString