as yet unclassified
createMockSubClass
  ((System stoneVersionAt: 'gsVersion') beginsWith: '2.')
    ifTrue: [ 
      ^ self mockClass
        subclass: self mockSubClassName
        instVarNames: #(#'iv1' #'iv2')
        classVars: #()
        classInstVars: #(#'civ1' #'civ2')
        poolDictionaries: #()
        inDictionary: ''
        category: self mockClassCategory ]
    ifFalse: [ 
      ^ self mockClass
        subclass: self mockSubClassName
        instVarNames: #(#'iv1' #'iv2')
        classVars: #()
        classInstVars: #(#'civ1' #'civ2')
        poolDictionaries: #()
        inDictionary: ''
        category: self mockClassCategory
        options: #() ]