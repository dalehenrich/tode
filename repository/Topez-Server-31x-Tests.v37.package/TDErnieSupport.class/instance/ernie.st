accessing
ernie
  ^ ernie ifNil: [ ernie := SymbolDictionary new
        name: #'UserGlobals';
        at: #'GS_AllUsers' put: AllUsers;
        at: GsPackagePolicy globalName put: GsPackagePolicy current;
        at: GsPackage globalName put: (UserGlobals at: GsPackage globalName);
        yourself ]