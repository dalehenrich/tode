as yet unclassified
createMockClassVersion
  ^ Object
    subclass: self mockClassName
    instVarNames: #(#'instanceVariable')
    classVars: #()
    classInstVars: #()
    poolDictionaries: #()
    inDictionary: ''
    category: self mockClassCategory
    options: #()