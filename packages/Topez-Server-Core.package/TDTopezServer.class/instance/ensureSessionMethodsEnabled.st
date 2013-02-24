accessing
ensureSessionMethodsEnabled
  GsPackagePolicy current enabled
    ifFalse: [ 
      GsPackagePolicy current enable.
      ^ true ].
  ^ false