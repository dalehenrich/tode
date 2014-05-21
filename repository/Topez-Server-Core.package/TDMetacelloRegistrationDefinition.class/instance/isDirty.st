testing
isDirty
  isDirty
    ifNil: [ 
      self isLoadedInImage
        ifFalse: [ 
          isDirty := false.
          ^ isDirty ].
      isDirty := true.
      self workingCopies
        detect: [ :wc | wc modified ]
        ifNone: [ isDirty := false ] ].
  ^ isDirty