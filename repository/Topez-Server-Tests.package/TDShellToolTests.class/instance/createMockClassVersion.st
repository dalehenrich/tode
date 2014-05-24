as yet unclassified
createMockClassVersion
  ((System stoneVersionAt: 'gsVersion') beginsWith: '2.')
    ifTrue: [ 
      ^ Object
        subclass: self mockClassName
        instVarNames: #(#'instanceVariable')
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        inDictionary: ''
        category: self mockClassCategory ]
    ifFalse: [ 
      ^ Object
        subclass: self mockClassName
        instVarNames: #(#'instanceVariable')
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        inDictionary: ''
        category: self mockClassCategory
        options: #() ]