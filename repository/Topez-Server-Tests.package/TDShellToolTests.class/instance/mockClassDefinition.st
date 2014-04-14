as yet unclassified
mockClassDefinition
  ((System stoneVersionAt: 'gsVersion') beginsWith: '2.')
    ifTrue: [ 
      ^ 'Object subclass: ''TDShellClsCommandMockClass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #[]
	inDictionary: ''''
	category: ''TDShellClsCommandMockClass-Category''
' ]
    ifFalse: [ 
      ^ 'Object subclass: ''TDShellClsCommandMockClass''
	instVarNames: #()
	classVars: #()
	classInstVars: #()
	poolDictionaries: #()
	inDictionary: ''''
	category: ''TDShellClsCommandMockClass-Category''
	options: #()
' ]