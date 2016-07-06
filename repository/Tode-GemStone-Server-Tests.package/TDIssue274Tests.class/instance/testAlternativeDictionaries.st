tests
testAlternativeDictionaries
  {(GsPackagePolicy current sessionMethodsSet asArray first
    persistentMethodDictForEnv: 0).
  (GsPackagePolicy current sessionMethodsSet asArray first
    transientMethodDictForEnv: 0)}
    do: [ :dict | 
      dict
        printStringTodeLimitedTo: 2;
        printStringTodeLimitedTo: 100 ]