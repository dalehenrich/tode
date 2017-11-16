accessing
classLookupSymbolList
  ^ classLookupSymbolList
    ifNil: [ classLookupSymbolList := self defaultClassLookupSymbolList ]