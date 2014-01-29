*topez-server-24x-core
methodAndCategoryDictionaryFor: aBehavior source: sourceString dictionaries: aSymbolList category: categorySymbol

  self enabled
    ifTrue: [ 
      | selectorOrError |
      selectorOrError := self
        extractSelectorOrErrorFor: aBehavior
        source: sourceString
        dictionaries: aSymbolList
        category: categorySymbol.
      (self permitSessionMethodFor: aBehavior selector: selectorOrError)
        ifTrue: [ ^ self homeSessionMethods methodAndCategoryDictionaryFor: aBehavior  ] ].
  ^ {nil.
  nil}
