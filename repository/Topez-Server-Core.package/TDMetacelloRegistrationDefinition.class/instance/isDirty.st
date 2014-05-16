testing
isDirty
  isDirty
    ifNil: [ 
      isDirty := true.
      self workingCopies
        detect: [ :wc | wc modified ]
        ifNone: [ isDirty := false ] ].
  ^ isDirty