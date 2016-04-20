accessing
gsClassDefinition
	"self gsClassDefinition"

	^ 'Object subclass: ''TDMinimalClientInteractionGenerator''
  instVarNames: ' , self instVarNames printString
		,
			'
  inDictionary: SymbolDictionary new.
'