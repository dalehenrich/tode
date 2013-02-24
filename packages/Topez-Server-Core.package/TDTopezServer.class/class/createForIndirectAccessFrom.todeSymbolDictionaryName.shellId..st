accessing
createForIndirectAccessFrom: theTodeUserName todeSymbolDictionaryName: todeSymbolDictionaryName shellId: aShellId
  | tode sessionMethodsPackage serverClass symbolDict todePackage stealthSymbolDictionary globalDict |
  tode := AllUsers userWithId: theTodeUserName ifAbsent: [ nil ].
  symbolDict := tode symbolList
    detect: [ :dict | dict name == todeSymbolDictionaryName ].
  todePackage := symbolDict at: GsPackage globalName.
  sessionMethodsPackage := GsPackageLibrary
    createPackageNamed: #'SessionMethods'.
  globalDict := UserGlobals.
  stealthSymbolDictionary := SymbolDictionary new
    name: #'todeSessionMethods';
    yourself.
  stealthSymbolDictionary at: GsPackage globalName put: todePackage.
  (System myUserProfile symbolList objectNamed: stealthSymbolDictionary name)
    == nil
    ifTrue: [ System myUserProfile symbolList add: stealthSymbolDictionary before: globalDict ].
  (GsSession currentSession symbolList objectNamed: stealthSymbolDictionary name)
    == nil
    ifTrue: [ 
      GsSession currentSession symbolList
        add: stealthSymbolDictionary
        before: globalDict ].
  GsPackagePolicy current enable.
  self todeSymbolList: tode symbolList.
  ^ self createFor: aShellId