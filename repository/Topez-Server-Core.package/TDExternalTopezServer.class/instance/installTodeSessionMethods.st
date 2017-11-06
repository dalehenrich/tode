login
installTodeSessionMethods
  "install the tODE sessionMethods into the session symbolList, so that tODE code can be executed in this environment"

  | todeUser todeUserGlobals currentSessionSymbolList |
  currentSessionSymbolList := GsCurrentSession currentSession symbolList.
  (currentSessionSymbolList objectNamed: 'TodeSessionMethods')
    ifNotNil: [ 
      "already there for some reason"
      ^ self ].
  currentSessionSymbolList
    createDictionaryNamed: #'TodeSessionMethods' at: 0;
    yourself.
  todeUser := AllUsers userWithId: self todeUserId.
  todeUserGlobals := todeUser objectNamed: 'UserGlobals'.
  (currentSessionSymbolList objectNamed: #'TodeSessionMethods')
    at: GsPackagePolicy globalName
      put: (todeUserGlobals at: GsPackagePolicy globalName);
    at: GsPackage globalName put: (todeUserGlobals at: GsPackage globalName);
    yourself.
  GsPackagePolicy current refreshSessionMethodDictionary.
  System commitTransaction