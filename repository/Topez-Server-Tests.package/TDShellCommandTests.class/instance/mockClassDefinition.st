as yet unclassified
mockClassDefinition
  ((System stoneVersionAt: 'gsVersion') beginsWith: '2.')
    ifTrue: [ 
      ^ 'Object subclass: ''TDShellClsCommandMockClass''
	instVarNames: #(iv1 iv2)
	classVars: #()
	classInstVars: #(civ1 civ2)
	poolDictionaries: #[]
	inDictionary: ''''
	category: ''TDShellClsCommandMockClass-Category''
' ]
    ifFalse: [ 
      ^ 'Object subclass: ''TDShellClsCommandMockClass''
	instVarNames: #(iv1 iv2)
	classVars: #()
	classInstVars: #(civ1 civ2)
	poolDictionaries: #()
	inDictionary: ''''
	category: ''TDShellClsCommandMockClass-Category''
	options: #()
' ]