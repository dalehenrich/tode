accessing
ensureSessionMethodsEnabled
  self class indirectAccess
    ifTrue: [ 
      GsPackagePolicy current enabled
        ifFalse: [ 
          GsPackagePolicy current enable.
          ^ true ] ].
  ^ false