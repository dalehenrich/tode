login
installTodeSessionMethods
  "install the tODE sessionMethods into the session symbolList, so that tODE code can be executed in this environment"

  | userGlobals todeUser todeUserGlobals currentSessionSymbolList |
  todeUser := AllUsers userWithId: self todeUserId.
  todeUserGlobals := todeUser objectNamed: 'UserGlobals'.
  currentSessionSymbolList := GsCurrentSession currentSession symbolList.
  currentSessionSymbolList
    createDictionaryNamed: #'TodeGlobals' at: 0;
    yourself.
  (currentSessionSymbolList objectNamed: #'TodeGlobals')
    at: GsPackagePolicy globalName
      put: (todeUserGlobals at: GsPackagePolicy globalName);
    at: GsPackage globalName put: (todeUserGlobals at: GsPackage globalName);
    yourself.
  GsPackagePolicy current refreshSessionMethodDictionary.
  System commitTransaction