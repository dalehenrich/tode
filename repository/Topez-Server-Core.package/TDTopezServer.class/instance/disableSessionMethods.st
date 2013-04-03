accessing
disableSessionMethods
  self class indirectAccess
    ifTrue: [ 
      GsPackagePolicy current enabled
        ifTrue: [ 
          GsPackagePolicy current disable.
          ^ true ] ].
  ^ false