as yet unclassified
pfclean
  "pf clean"

  self profMonitor
    ifNotNil: [ :profMon | 
      [ 
      profMon endTime
        ifNotNil: [ 
          [ profMon stopMonitoring ]
            on: Error
            do: [ :ex |  ] ].
      profMon removeFile ]
        on: Error
        do: [ :ex |  ].
      self profMonitor: nil ]