smalltalk api
pfClean: aProfMonitor
  aProfMonitor endTime
    ifNotNil: [ 
      [ aProfMonitor stopMonitoring ]
        on: Error
        do: [ :ignored |  ] ].
  [ aProfMonitor removeFile ]
    on: Error
    do: [ :ignored |  ]