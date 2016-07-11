sorting
resortBySample: aSortKey
  "aSortKey: className or methodName"

  profMonitorEntries := aSortKey = 'className'
    ifTrue: [ 
      profMonitorEntries
        sort: [ :a :b | 
          a profMonEntry cmethod homeMethod inClass name
            < b profMonEntry cmethod homeMethod inClass name ] ]
    ifFalse: [ 
      profMonitorEntries
        sort: [ :a :b | 
          | aSel bSel |
          aSel := a profMonEntry cmethod homeMethod selector.
          bSel := b profMonEntry cmethod homeMethod selector.
          aSel ifNil: [ aSel := 'Executed Block' ].
          bSel ifNil: [ bSel := 'Executed Block' ].
          aSel < bSel ] ]