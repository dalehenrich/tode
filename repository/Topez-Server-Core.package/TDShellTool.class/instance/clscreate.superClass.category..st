as yet unclassified
clscreate: clsName superClass: superClass category: category
  ((System stoneVersionAt: 'gsVersion') beginsWith: '2.')
    ifTrue: [ 
      ^ superClass
        subclass: clsName
        instVarNames: #()
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        inDictionary: ''
        category: category ]
    ifFalse: [ 
      ^ superClass
        subclass: clsName
        instVarNames: #()
        classVars: #()
        classInstVars: #()
        poolDictionaries: #()
        inDictionary: ''
        category: category
        options: #() ]